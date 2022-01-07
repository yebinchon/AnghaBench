
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pm_message_t ;


 int pci_choose_state (struct pci_dev*,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;

__attribute__((used)) static int sta2x11_mfd_suspend(struct pci_dev *pdev, pm_message_t state)
{
 pci_save_state(pdev);
 pci_disable_device(pdev);
 pci_set_power_state(pdev, pci_choose_state(pdev, state));

 return 0;
}
