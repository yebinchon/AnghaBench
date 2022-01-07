
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef int pm_message_t ;


 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pci_choose_state (struct pci_dev*,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pcnet32_close (struct net_device*) ;

__attribute__((used)) static int pcnet32_pm_suspend(struct pci_dev *pdev, pm_message_t state)
{
 struct net_device *dev = pci_get_drvdata(pdev);

 if (netif_running(dev)) {
  netif_device_detach(dev);
  pcnet32_close(dev);
 }
 pci_save_state(pdev);
 pci_set_power_state(pdev, pci_choose_state(pdev, state));
 return 0;
}
