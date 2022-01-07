
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {struct pci_dev* pdev; } ;
struct pci_dev {int revision; scalar_t__ subsystem_device; } ;


 scalar_t__ PCI_SUBSYS_DEVID_96XX ;

__attribute__((used)) static inline bool is_rvu_9xxx_A0(struct rvu *rvu)
{
 struct pci_dev *pdev = rvu->pdev;

 return (pdev->revision == 0x00) &&
  (pdev->subsystem_device == PCI_SUBSYS_DEVID_96XX);
}
