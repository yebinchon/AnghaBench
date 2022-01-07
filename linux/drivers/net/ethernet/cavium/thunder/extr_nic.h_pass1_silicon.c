
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int revision; scalar_t__ subsystem_device; } ;


 scalar_t__ PCI_SUBSYS_DEVID_88XX_NIC_PF ;

__attribute__((used)) static inline bool pass1_silicon(struct pci_dev *pdev)
{
 return (pdev->revision < 8) &&
  (pdev->subsystem_device == PCI_SUBSYS_DEVID_88XX_NIC_PF);
}
