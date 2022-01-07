
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned short start; unsigned short end; int flags; } ;
struct pci_dev {int dev; } ;


 int IORESOURCE_IO ;
 int LPC_NO_RESOURCE ;
 int LPC_SKIP_RESOURCE ;
 int dev_warn (int *,char*,char const*) ;
 int pci_read_config_dword (struct pci_dev*,int,unsigned int*) ;

__attribute__((used)) static int lpc_sch_get_io(struct pci_dev *pdev, int where, const char *name,
     struct resource *res, int size)
{
 unsigned int base_addr_cfg;
 unsigned short base_addr;

 if (size == 0)
  return LPC_NO_RESOURCE;

 pci_read_config_dword(pdev, where, &base_addr_cfg);
 base_addr = 0;
 if (!(base_addr_cfg & (1 << 31)))
  dev_warn(&pdev->dev, "Decode of the %s I/O range disabled\n",
    name);
 else
  base_addr = (unsigned short)base_addr_cfg;

 if (base_addr == 0) {
  dev_warn(&pdev->dev, "I/O space for %s uninitialized\n", name);
  return LPC_SKIP_RESOURCE;
 }

 res->start = base_addr;
 res->end = base_addr + size - 1;
 res->flags = IORESOURCE_IO;

 return 0;
}
