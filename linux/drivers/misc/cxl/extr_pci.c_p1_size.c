
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int resource_size_t ;


 int pci_resource_len (struct pci_dev*,int) ;

__attribute__((used)) static inline resource_size_t p1_size(struct pci_dev *dev)
{
 return pci_resource_len(dev, 2);
}
