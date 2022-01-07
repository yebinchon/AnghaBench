
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns3_nic_priv {int vector_num; int * tqp_vector; int state; struct hnae3_handle* ae_handle; } ;
struct TYPE_6__ {int num_tqps; int * tqp; } ;
struct hnae3_handle {TYPE_3__ kinfo; TYPE_2__* ae_algo; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* start ) (struct hnae3_handle*) ;} ;


 int HNS3_NIC_STATE_DOWN ;
 int clear_bit (int ,int *) ;
 int hns3_free_rx_cpu_rmap (struct net_device*) ;
 int hns3_nic_init_irq (struct hns3_nic_priv*) ;
 int hns3_nic_reset_all_ring (struct hnae3_handle*) ;
 int hns3_nic_uninit_irq (struct hns3_nic_priv*) ;
 int hns3_set_rx_cpu_rmap (struct net_device*) ;
 int hns3_tqp_disable (int ) ;
 int hns3_tqp_enable (int ) ;
 int hns3_vector_disable (int *) ;
 int hns3_vector_enable (int *) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int set_bit (int ,int *) ;
 int stub1 (struct hnae3_handle*) ;

__attribute__((used)) static int hns3_nic_net_up(struct net_device *netdev)
{
 struct hns3_nic_priv *priv = netdev_priv(netdev);
 struct hnae3_handle *h = priv->ae_handle;
 int i, j;
 int ret;

 ret = hns3_nic_reset_all_ring(h);
 if (ret)
  return ret;


 ret = hns3_set_rx_cpu_rmap(netdev);
 if (ret)
  netdev_warn(netdev, "set rx cpu rmap fail, ret=%d!\n", ret);


 ret = hns3_nic_init_irq(priv);
 if (ret) {
  netdev_err(netdev, "init irq failed! ret=%d\n", ret);
  goto free_rmap;
 }

 clear_bit(HNS3_NIC_STATE_DOWN, &priv->state);


 for (i = 0; i < priv->vector_num; i++)
  hns3_vector_enable(&priv->tqp_vector[i]);


 for (j = 0; j < h->kinfo.num_tqps; j++)
  hns3_tqp_enable(h->kinfo.tqp[j]);


 ret = h->ae_algo->ops->start ? h->ae_algo->ops->start(h) : 0;
 if (ret)
  goto out_start_err;

 return 0;

out_start_err:
 set_bit(HNS3_NIC_STATE_DOWN, &priv->state);
 while (j--)
  hns3_tqp_disable(h->kinfo.tqp[j]);

 for (j = i - 1; j >= 0; j--)
  hns3_vector_disable(&priv->tqp_vector[j]);

 hns3_nic_uninit_irq(priv);
free_rmap:
 hns3_free_rx_cpu_rmap(netdev);
 return ret;
}
