
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int PCI_D0 ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pcnet32_open (struct net_device*) ;

__attribute__((used)) static int pcnet32_pm_resume(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);

 pci_set_power_state(pdev, PCI_D0);
 pci_restore_state(pdev);

 if (netif_running(dev)) {
  pcnet32_open(dev);
  netif_device_attach(dev);
 }
 return 0;
}
