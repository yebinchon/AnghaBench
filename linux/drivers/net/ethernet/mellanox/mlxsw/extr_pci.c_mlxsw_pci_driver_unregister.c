
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int dummy; } ;


 int pci_unregister_driver (struct pci_driver*) ;

void mlxsw_pci_driver_unregister(struct pci_driver *pci_driver)
{
 pci_unregister_driver(pci_driver);
}
