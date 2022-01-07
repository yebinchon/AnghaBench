
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int dummy; } ;
struct TYPE_2__ {int sa_data; } ;
struct iw_mlme {int cmd; TYPE_1__ addr; int reason_code; } ;
struct hostap_interface {int * local; } ;
typedef int local_info_t ;
typedef int __le16 ;


 int EOPNOTSUPP ;
 int IEEE80211_STYPE_DEAUTH ;
 int IEEE80211_STYPE_DISASSOC ;


 int cpu_to_le16 (int ) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int prism2_sta_send_mgmt (int *,int ,int ,int *,int) ;

__attribute__((used)) static int prism2_ioctl_siwmlme(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_point *data, char *extra)
{
 struct hostap_interface *iface = netdev_priv(dev);
 local_info_t *local = iface->local;
 struct iw_mlme *mlme = (struct iw_mlme *) extra;
 __le16 reason;

 reason = cpu_to_le16(mlme->reason_code);

 switch (mlme->cmd) {
 case 129:
  return prism2_sta_send_mgmt(local, mlme->addr.sa_data,
         IEEE80211_STYPE_DEAUTH,
         (u8 *) &reason, 2);
 case 128:
  return prism2_sta_send_mgmt(local, mlme->addr.sa_data,
         IEEE80211_STYPE_DISASSOC,
         (u8 *) &reason, 2);
 default:
  return -EOPNOTSUPP;
 }
}
