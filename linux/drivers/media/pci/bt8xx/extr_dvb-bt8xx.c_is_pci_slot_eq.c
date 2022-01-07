
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 scalar_t__ PCI_SLOT (int ) ;

__attribute__((used)) static int is_pci_slot_eq(struct pci_dev* adev, struct pci_dev* bdev)
{
 if ((adev->subsystem_vendor == bdev->subsystem_vendor) &&
  (adev->subsystem_device == bdev->subsystem_device) &&
  (adev->bus->number == bdev->bus->number) &&
  (PCI_SLOT(adev->devfn) == PCI_SLOT(bdev->devfn)))
  return 1;
 return 0;
}
