
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dev; } ;
struct hnae3_knic_private_info {int rss_size; int num_tqps; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; } ;
struct ethtool_channels {int combined_count; scalar_t__ tx_count; scalar_t__ rx_count; } ;


 int EBUSY ;
 int EINVAL ;
 int HNAE3_DOWN_CLIENT ;
 int HNAE3_UNINIT_CLIENT ;
 int dev_err (int *,char*,int) ;
 int drv ;
 int hns3_change_channels (struct hnae3_handle*,int,int) ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int hns3_get_max_available_channels (struct hnae3_handle*) ;
 scalar_t__ hns3_nic_resetting (struct net_device*) ;
 int hns3_reset_notify (struct hnae3_handle*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_dbg (struct hnae3_handle*,int ,struct net_device*,char*,int,int) ;
 int netif_is_rxfh_configured (struct net_device*) ;

int hns3_set_channels(struct net_device *netdev,
        struct ethtool_channels *ch)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);
 struct hnae3_knic_private_info *kinfo = &h->kinfo;
 bool rxfh_configured = netif_is_rxfh_configured(netdev);
 u32 new_tqp_num = ch->combined_count;
 u16 org_tqp_num;
 int ret;

 if (hns3_nic_resetting(netdev))
  return -EBUSY;

 if (ch->rx_count || ch->tx_count)
  return -EINVAL;

 if (new_tqp_num > hns3_get_max_available_channels(h) ||
     new_tqp_num < 1) {
  dev_err(&netdev->dev,
   "Change tqps fail, the tqp range is from 1 to %d",
   hns3_get_max_available_channels(h));
  return -EINVAL;
 }

 if (kinfo->rss_size == new_tqp_num)
  return 0;

 netif_dbg(h, drv, netdev,
    "set channels: tqp_num=%u, rxfh=%d\n",
    new_tqp_num, rxfh_configured);

 ret = hns3_reset_notify(h, HNAE3_DOWN_CLIENT);
 if (ret)
  return ret;

 ret = hns3_reset_notify(h, HNAE3_UNINIT_CLIENT);
 if (ret)
  return ret;

 org_tqp_num = h->kinfo.num_tqps;
 ret = hns3_change_channels(h, new_tqp_num, rxfh_configured);
 if (ret) {
  int ret1;

  netdev_warn(netdev,
       "Change channels fail, revert to old value\n");
  ret1 = hns3_change_channels(h, org_tqp_num, rxfh_configured);
  if (ret1) {
   netdev_err(netdev,
       "revert to old channel fail\n");
   return ret1;
  }

  return ret;
 }

 return 0;
}
