
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subsystem_device; int subsystem_vendor; int devfn; } ;
struct cx88_core {int name; } ;


 int EBUSY ;
 int PCI_FUNC (int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 int pr_err (char*,int ,unsigned long long,int ,int ) ;
 scalar_t__ request_mem_region (scalar_t__,int ,int ) ;

int cx88_get_resources(const struct cx88_core *core, struct pci_dev *pci)
{
 if (request_mem_region(pci_resource_start(pci, 0),
          pci_resource_len(pci, 0),
          core->name))
  return 0;
 pr_err("func %d: Can't get MMIO memory @ 0x%llx, subsystem: %04x:%04x\n",
        PCI_FUNC(pci->devfn),
        (unsigned long long)pci_resource_start(pci, 0),
        pci->subsystem_vendor, pci->subsystem_device);
 return -EBUSY;
}
