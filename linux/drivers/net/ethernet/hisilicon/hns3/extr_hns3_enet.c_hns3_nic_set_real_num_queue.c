
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hnae3_knic_private_info {unsigned int rss_size; unsigned int num_tc; TYPE_1__* tc_info; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; } ;
struct TYPE_2__ {int tqp_offset; int tqp_count; int tc; int enable; } ;


 int HNAE3_MAX_TC ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int netdev_err (struct net_device*,char*,int) ;
 int netdev_reset_tc (struct net_device*) ;
 int netdev_set_num_tc (struct net_device*,int) ;
 int netdev_set_tc_queue (struct net_device*,int ,int ,int ) ;
 int netif_set_real_num_rx_queues (struct net_device*,unsigned int) ;
 int netif_set_real_num_tx_queues (struct net_device*,unsigned int) ;

__attribute__((used)) static int hns3_nic_set_real_num_queue(struct net_device *netdev)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);
 struct hnae3_knic_private_info *kinfo = &h->kinfo;
 unsigned int queue_size = kinfo->rss_size * kinfo->num_tc;
 int i, ret;

 if (kinfo->num_tc <= 1) {
  netdev_reset_tc(netdev);
 } else {
  ret = netdev_set_num_tc(netdev, kinfo->num_tc);
  if (ret) {
   netdev_err(netdev,
       "netdev_set_num_tc fail, ret=%d!\n", ret);
   return ret;
  }

  for (i = 0; i < HNAE3_MAX_TC; i++) {
   if (!kinfo->tc_info[i].enable)
    continue;

   netdev_set_tc_queue(netdev,
         kinfo->tc_info[i].tc,
         kinfo->tc_info[i].tqp_count,
         kinfo->tc_info[i].tqp_offset);
  }
 }

 ret = netif_set_real_num_tx_queues(netdev, queue_size);
 if (ret) {
  netdev_err(netdev,
      "netif_set_real_num_tx_queues fail, ret=%d!\n", ret);
  return ret;
 }

 ret = netif_set_real_num_rx_queues(netdev, queue_size);
 if (ret) {
  netdev_err(netdev,
      "netif_set_real_num_rx_queues fail, ret=%d!\n", ret);
  return ret;
 }

 return 0;
}
