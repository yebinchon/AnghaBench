
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct atl1c_adapter {int wol; } ;


 int PCI_D3hot ;
 int atl1c_suspend (int *) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pci_wake_from_d3 (struct pci_dev*,int ) ;

__attribute__((used)) static void atl1c_shutdown(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct atl1c_adapter *adapter = netdev_priv(netdev);

 atl1c_suspend(&pdev->dev);
 pci_wake_from_d3(pdev, adapter->wol);
 pci_set_power_state(pdev, PCI_D3hot);
}
