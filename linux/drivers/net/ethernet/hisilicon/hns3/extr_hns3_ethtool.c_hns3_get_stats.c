
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int stats; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_stats ) (struct hnae3_handle*,int *) ;int (* update_stats ) (struct hnae3_handle*,int *) ;} ;


 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int * hns3_get_stats_tqps (struct hnae3_handle*,int *) ;
 scalar_t__ hns3_nic_resetting (struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;
 int stub1 (struct hnae3_handle*,int *) ;
 int stub2 (struct hnae3_handle*,int *) ;

__attribute__((used)) static void hns3_get_stats(struct net_device *netdev,
      struct ethtool_stats *stats, u64 *data)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);
 u64 *p = data;

 if (hns3_nic_resetting(netdev)) {
  netdev_err(netdev, "dev resetting, could not get stats\n");
  return;
 }

 if (!h->ae_algo->ops->get_stats || !h->ae_algo->ops->update_stats) {
  netdev_err(netdev, "could not get any statistics\n");
  return;
 }

 h->ae_algo->ops->update_stats(h, &netdev->stats);


 p = hns3_get_stats_tqps(h, p);


 h->ae_algo->ops->get_stats(h, p);
}
