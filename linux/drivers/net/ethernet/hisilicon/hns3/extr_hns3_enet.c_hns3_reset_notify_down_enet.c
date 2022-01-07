
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hns3_nic_priv {int state; } ;
struct hnae3_knic_private_info {struct net_device* netdev; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; int pdev; } ;
struct hnae3_ae_dev {int dummy; } ;


 int HNS3_NIC_STATE_RESETTING ;
 int hns3_del_all_fd_rules (struct net_device*,int) ;
 scalar_t__ hns3_dev_ongoing_func_reset (struct hnae3_ae_dev*) ;
 int hns3_nic_net_stop (struct net_device*) ;
 int hns3_remove_hw_addr (struct net_device*) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 struct hnae3_ae_dev* pci_get_drvdata (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int hns3_reset_notify_down_enet(struct hnae3_handle *handle)
{
 struct hnae3_ae_dev *ae_dev = pci_get_drvdata(handle->pdev);
 struct hnae3_knic_private_info *kinfo = &handle->kinfo;
 struct net_device *ndev = kinfo->netdev;
 struct hns3_nic_priv *priv = netdev_priv(ndev);

 if (test_and_set_bit(HNS3_NIC_STATE_RESETTING, &priv->state))
  return 0;





 if (hns3_dev_ongoing_func_reset(ae_dev)) {
  hns3_remove_hw_addr(ndev);
  hns3_del_all_fd_rules(ndev, 0);
 }

 if (!netif_running(ndev))
  return 0;

 return hns3_nic_net_stop(ndev);
}
