
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct hinic_rx_mode_work {int work; } ;
struct hinic_dev {int hwdev; int workq; struct hinic_rx_mode_work rx_mode_work; } ;


 int HINIC_MGMT_MSG_CMD_LINK_STATUS ;
 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int dev_info (int *,char*) ;
 int free_netdev (struct net_device*) ;
 int hinic_free_hwdev (int ) ;
 int hinic_hwdev_cb_unregister (int ,int ) ;
 struct hinic_dev* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void hinic_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct hinic_dev *nic_dev = netdev_priv(netdev);
 struct hinic_rx_mode_work *rx_mode_work;

 unregister_netdev(netdev);

 hinic_hwdev_cb_unregister(nic_dev->hwdev,
      HINIC_MGMT_MSG_CMD_LINK_STATUS);

 rx_mode_work = &nic_dev->rx_mode_work;
 cancel_work_sync(&rx_mode_work->work);

 pci_set_drvdata(pdev, ((void*)0));

 destroy_workqueue(nic_dev->workq);

 hinic_free_hwdev(nic_dev->hwdev);

 free_netdev(netdev);

 pci_release_regions(pdev);
 pci_disable_device(pdev);

 dev_info(&pdev->dev, "HiNIC driver - removed\n");
}
