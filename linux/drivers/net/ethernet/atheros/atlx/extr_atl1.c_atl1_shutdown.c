
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct atl1_adapter {int wol; } ;


 int PCI_D3hot ;
 int atl1_suspend (int *) ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pci_wake_from_d3 (struct pci_dev*,int ) ;

__attribute__((used)) static void atl1_shutdown(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct atl1_adapter *adapter = netdev_priv(netdev);




 pci_wake_from_d3(pdev, adapter->wol);
 pci_set_power_state(pdev, PCI_D3hot);
}
