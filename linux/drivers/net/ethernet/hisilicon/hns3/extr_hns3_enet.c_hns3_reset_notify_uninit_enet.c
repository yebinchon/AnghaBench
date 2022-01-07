
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns3_nic_priv {int ae_handle; int state; } ;
struct TYPE_2__ {struct net_device* netdev; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;


 int HNS3_NIC_STATE_INITED ;
 int hns3_clear_all_ring (struct hnae3_handle*,int) ;
 int hns3_nic_dealloc_vector_data (struct hns3_nic_priv*) ;
 int hns3_nic_uninit_vector_data (struct hns3_nic_priv*) ;
 int hns3_put_ring_config (struct hns3_nic_priv*) ;
 int hns3_reset_tx_queue (int ) ;
 int hns3_store_coal (struct hns3_nic_priv*) ;
 int hns3_uninit_all_ring (struct hns3_nic_priv*) ;
 int netdev_err (struct net_device*,char*) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int hns3_reset_notify_uninit_enet(struct hnae3_handle *handle)
{
 struct net_device *netdev = handle->kinfo.netdev;
 struct hns3_nic_priv *priv = netdev_priv(netdev);
 int ret;

 if (!test_and_clear_bit(HNS3_NIC_STATE_INITED, &priv->state)) {
  netdev_warn(netdev, "already uninitialized\n");
  return 0;
 }

 hns3_clear_all_ring(handle, 1);
 hns3_reset_tx_queue(priv->ae_handle);

 hns3_nic_uninit_vector_data(priv);

 hns3_store_coal(priv);

 ret = hns3_nic_dealloc_vector_data(priv);
 if (ret)
  netdev_err(netdev, "dealloc vector error\n");

 ret = hns3_uninit_all_ring(priv);
 if (ret)
  netdev_err(netdev, "uninit ring error\n");

 hns3_put_ring_config(priv);

 return ret;
}
