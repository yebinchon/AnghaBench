
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; } ;


 scalar_t__ PCI_FUNC (int ) ;

__attribute__((used)) static inline bool netxen_function_zero(struct pci_dev *pdev)
{
 return (PCI_FUNC(pdev->devfn) == 0) ? 1 : 0;
}
