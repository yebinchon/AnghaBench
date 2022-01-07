
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct hns3_nic_priv {TYPE_2__* ring_data; } ;
struct TYPE_3__ {size_t num_tqps; struct net_device* netdev; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;
struct TYPE_4__ {int queue_index; } ;


 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int netdev_tx_reset_queue (struct netdev_queue*) ;

__attribute__((used)) static void hns3_reset_tx_queue(struct hnae3_handle *h)
{
 struct net_device *ndev = h->kinfo.netdev;
 struct hns3_nic_priv *priv = netdev_priv(ndev);
 struct netdev_queue *dev_queue;
 u32 i;

 for (i = 0; i < h->kinfo.num_tqps; i++) {
  dev_queue = netdev_get_tx_queue(ndev,
      priv->ring_data[i].queue_index);
  netdev_tx_reset_queue(dev_queue);
 }
}
