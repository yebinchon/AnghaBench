
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns3_nic_priv {int ae_handle; int state; } ;
struct hnae3_handle {TYPE_1__* ae_algo; } ;
struct TYPE_4__ {int (* set_timer_task ) (int ,int) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;


 int HNS3_NIC_STATE_DOWN ;
 int drv ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int hns3_nic_net_down (struct net_device*) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_dbg (struct hnae3_handle*,int ,struct net_device*,char*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int stub1 (int ,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int hns3_nic_net_stop(struct net_device *netdev)
{
 struct hns3_nic_priv *priv = netdev_priv(netdev);
 struct hnae3_handle *h = hns3_get_handle(netdev);

 if (test_and_set_bit(HNS3_NIC_STATE_DOWN, &priv->state))
  return 0;

 netif_dbg(h, drv, netdev, "net stop\n");

 if (h->ae_algo->ops->set_timer_task)
  h->ae_algo->ops->set_timer_task(priv->ae_handle, 0);

 netif_tx_stop_all_queues(netdev);
 netif_carrier_off(netdev);

 hns3_nic_net_down(netdev);

 return 0;
}
