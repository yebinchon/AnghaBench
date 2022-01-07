
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_dev {int pci; int name; } ;


 int EBUSY ;
 int pci_resource_len (int ,int ) ;
 scalar_t__ pci_resource_start (int ,int ) ;
 int pr_err (char*,int ,unsigned long long) ;
 scalar_t__ request_mem_region (scalar_t__,int ,int ) ;

__attribute__((used)) static int cx25821_get_resources(struct cx25821_dev *dev)
{
 if (request_mem_region(pci_resource_start(dev->pci, 0),
    pci_resource_len(dev->pci, 0), dev->name))
  return 0;

 pr_err("%s: can't get MMIO memory @ 0x%llx\n",
  dev->name, (unsigned long long)pci_resource_start(dev->pci, 0));

 return -EBUSY;
}
