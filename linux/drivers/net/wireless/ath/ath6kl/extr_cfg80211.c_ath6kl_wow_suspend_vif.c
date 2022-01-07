
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct in_ifaddr {int ifa_next; int ifa_local; } ;
struct in_device {int ifa_list; } ;
struct cfg80211_wowlan {int dummy; } ;
struct ath6kl_vif {scalar_t__ nw_type; int fw_vif_idx; int ndev; struct ath6kl* ar; int flags; } ;
struct ath6kl {int wmi; int * fw_capabilities; } ;
typedef int ips ;
typedef int __be32 ;


 scalar_t__ AP_NETWORK ;
 int ATH6KL_FW_CAPABILITY_WOW_MULTICAST_FILTER ;
 scalar_t__ ATH6KL_MAX_BMISS_TIME ;
 int ATH6KL_MAX_WOW_LISTEN_INTL ;
 int EINVAL ;
 int MAX_IP_ADDRS ;
 int NETDEV_MCAST_ALL_ON ;
 int WOW_LIST_ID ;
 scalar_t__ WOW_MAX_FILTERS_PER_LIST ;
 struct in_device* __in_dev_get_rtnl (int ) ;
 int ath6kl_err (char*) ;
 int ath6kl_wmi_bmisstime_cmd (int ,int ,scalar_t__,int ) ;
 int ath6kl_wmi_del_wow_pattern_cmd (int ,int ,int ,scalar_t__) ;
 int ath6kl_wmi_listeninterval_cmd (int ,int ,int,int ) ;
 int ath6kl_wmi_mcast_filter_cmd (int ,int ,int) ;
 int ath6kl_wmi_scanparams_cmd (int ,int ,int,int ,int,int ,int ,int ,int ,int ,int ,int ) ;
 int ath6kl_wmi_set_ip_cmd (int ,int ,int ,int ) ;
 int ath6kl_wow_ap (struct ath6kl*,struct ath6kl_vif*) ;
 int ath6kl_wow_sta (struct ath6kl*,struct ath6kl_vif*) ;
 int ath6kl_wow_usr (struct ath6kl*,struct ath6kl_vif*,struct cfg80211_wowlan*,int *) ;
 int memset (int **,int ,int) ;
 int netif_stop_queue (int ) ;
 struct in_ifaddr* rtnl_dereference (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ath6kl_wow_suspend_vif(struct ath6kl_vif *vif,
      struct cfg80211_wowlan *wow, u32 *filter)
{
 struct ath6kl *ar = vif->ar;
 struct in_device *in_dev;
 struct in_ifaddr *ifa;
 int ret;
 u16 i, bmiss_time;
 __be32 ips[MAX_IP_ADDRS];
 u8 index = 0;

 if (!test_bit(NETDEV_MCAST_ALL_ON, &vif->flags) &&
     test_bit(ATH6KL_FW_CAPABILITY_WOW_MULTICAST_FILTER,
       ar->fw_capabilities)) {
  ret = ath6kl_wmi_mcast_filter_cmd(vif->ar->wmi,
      vif->fw_vif_idx, 0);
  if (ret)
   return ret;
 }


 for (i = 0; i < WOW_MAX_FILTERS_PER_LIST; i++)
  ath6kl_wmi_del_wow_pattern_cmd(ar->wmi, vif->fw_vif_idx,
            WOW_LIST_ID, i);






 if (wow)
  ret = ath6kl_wow_usr(ar, vif, wow, filter);
 else if (vif->nw_type == AP_NETWORK)
  ret = ath6kl_wow_ap(ar, vif);
 else
  ret = ath6kl_wow_sta(ar, vif);

 if (ret)
  return ret;

 netif_stop_queue(vif->ndev);

 if (vif->nw_type != AP_NETWORK) {
  ret = ath6kl_wmi_listeninterval_cmd(ar->wmi, vif->fw_vif_idx,
          ATH6KL_MAX_WOW_LISTEN_INTL,
          0);
  if (ret)
   return ret;


  bmiss_time = ATH6KL_MAX_WOW_LISTEN_INTL * 15;
  if (bmiss_time > ATH6KL_MAX_BMISS_TIME)
   bmiss_time = ATH6KL_MAX_BMISS_TIME;

  ret = ath6kl_wmi_bmisstime_cmd(ar->wmi, vif->fw_vif_idx,
            bmiss_time, 0);
  if (ret)
   return ret;

  ret = ath6kl_wmi_scanparams_cmd(ar->wmi, vif->fw_vif_idx,
      0xFFFF, 0, 0xFFFF, 0, 0, 0,
      0, 0, 0, 0);
  if (ret)
   return ret;
 }


 in_dev = __in_dev_get_rtnl(vif->ndev);
 if (!in_dev)
  return 0;

 ifa = rtnl_dereference(in_dev->ifa_list);
 memset(&ips, 0, sizeof(ips));


 while (index < MAX_IP_ADDRS && ifa) {
  ips[index] = ifa->ifa_local;
  ifa = rtnl_dereference(ifa->ifa_next);
  index++;
 }

 if (ifa) {
  ath6kl_err("total IP addr count is exceeding fw limit\n");
  return -EINVAL;
 }

 ret = ath6kl_wmi_set_ip_cmd(ar->wmi, vif->fw_vif_idx, ips[0], ips[1]);
 if (ret) {
  ath6kl_err("fail to setup ip for arp agent\n");
  return ret;
 }

 return ret;
}
