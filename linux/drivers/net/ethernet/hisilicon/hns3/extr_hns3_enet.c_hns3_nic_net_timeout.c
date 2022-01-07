
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns3_nic_priv {struct hnae3_handle* ae_handle; } ;
struct hnae3_handle {int pdev; TYPE_2__* ae_algo; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* reset_event ) (int ,struct hnae3_handle*) ;} ;


 int hns3_get_tx_timeo_queue_info (struct net_device*) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (int ,struct hnae3_handle*) ;

__attribute__((used)) static void hns3_nic_net_timeout(struct net_device *ndev)
{
 struct hns3_nic_priv *priv = netdev_priv(ndev);
 struct hnae3_handle *h = priv->ae_handle;

 if (!hns3_get_tx_timeo_queue_info(ndev))
  return;




 if (h->ae_algo->ops->reset_event)
  h->ae_algo->ops->reset_event(h->pdev, h);
}
