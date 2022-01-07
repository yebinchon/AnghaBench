
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ reg_state; } ;
struct hns3_nic_priv {int state; } ;
struct TYPE_2__ {struct net_device* netdev; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;


 int HNS3_NIC_STATE_INITED ;
 scalar_t__ NETREG_UNINITIALIZED ;
 int free_netdev (struct net_device*) ;
 int hns3_clear_all_ring (struct hnae3_handle*,int) ;
 int hns3_client_stop (struct hnae3_handle*) ;
 int hns3_dbg_uninit (struct hnae3_handle*) ;
 int hns3_del_all_fd_rules (struct net_device*,int) ;
 int hns3_nic_dealloc_vector_data (struct hns3_nic_priv*) ;
 int hns3_nic_uninit_vector_data (struct hns3_nic_priv*) ;
 int hns3_put_ring_config (struct hns3_nic_priv*) ;
 int hns3_remove_hw_addr (struct net_device*) ;
 int hns3_uninit_all_ring (struct hns3_nic_priv*) ;
 int hns3_uninit_phy (struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int test_and_clear_bit (int ,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void hns3_client_uninit(struct hnae3_handle *handle, bool reset)
{
 struct net_device *netdev = handle->kinfo.netdev;
 struct hns3_nic_priv *priv = netdev_priv(netdev);
 int ret;

 hns3_remove_hw_addr(netdev);

 if (netdev->reg_state != NETREG_UNINITIALIZED)
  unregister_netdev(netdev);

 hns3_client_stop(handle);

 hns3_uninit_phy(netdev);

 if (!test_and_clear_bit(HNS3_NIC_STATE_INITED, &priv->state)) {
  netdev_warn(netdev, "already uninitialized\n");
  goto out_netdev_free;
 }

 hns3_del_all_fd_rules(netdev, 1);

 hns3_clear_all_ring(handle, 1);

 hns3_nic_uninit_vector_data(priv);

 ret = hns3_nic_dealloc_vector_data(priv);
 if (ret)
  netdev_err(netdev, "dealloc vector error\n");

 ret = hns3_uninit_all_ring(priv);
 if (ret)
  netdev_err(netdev, "uninit ring error\n");

 hns3_put_ring_config(priv);

 hns3_dbg_uninit(handle);

out_netdev_free:
 free_netdev(netdev);
}
