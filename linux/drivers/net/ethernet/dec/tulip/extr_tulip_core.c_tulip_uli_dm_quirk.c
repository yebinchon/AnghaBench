
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int vendor; int device; } ;



__attribute__((used)) static int tulip_uli_dm_quirk(struct pci_dev *pdev)
{
 if (pdev->vendor == 0x1282 && pdev->device == 0x9102)
  return 1;
 return 0;
}
