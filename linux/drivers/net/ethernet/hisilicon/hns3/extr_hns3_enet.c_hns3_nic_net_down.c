
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns3_nic_priv {int vector_num; TYPE_3__* ae_handle; int * tqp_vector; } ;
struct TYPE_6__ {int num_tqps; int * tqp; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;
struct hnae3_ae_ops {int (* stop ) (TYPE_3__*) ;} ;
struct TYPE_8__ {TYPE_2__* ae_algo; } ;
struct TYPE_7__ {struct hnae3_ae_ops* ops; } ;


 int hns3_clear_all_ring (TYPE_3__*,int) ;
 int hns3_free_rx_cpu_rmap (struct net_device*) ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int hns3_nic_resetting (struct net_device*) ;
 int hns3_nic_uninit_irq (struct hns3_nic_priv*) ;
 int hns3_reset_tx_queue (TYPE_3__*) ;
 int hns3_tqp_disable (int ) ;
 int hns3_vector_disable (int *) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void hns3_nic_net_down(struct net_device *netdev)
{
 struct hns3_nic_priv *priv = netdev_priv(netdev);
 struct hnae3_handle *h = hns3_get_handle(netdev);
 const struct hnae3_ae_ops *ops;
 int i;


 for (i = 0; i < priv->vector_num; i++)
  hns3_vector_disable(&priv->tqp_vector[i]);


 for (i = 0; i < h->kinfo.num_tqps; i++)
  hns3_tqp_disable(h->kinfo.tqp[i]);


 ops = priv->ae_handle->ae_algo->ops;
 if (ops->stop)
  ops->stop(priv->ae_handle);

 hns3_free_rx_cpu_rmap(netdev);


 hns3_nic_uninit_irq(priv);





 if (!hns3_nic_resetting(netdev))
  hns3_clear_all_ring(priv->ae_handle, 0);

 hns3_reset_tx_queue(priv->ae_handle);
}
