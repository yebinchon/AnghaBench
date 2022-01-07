
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int remove; int probe; } ;


 int mlxsw_pci_probe ;
 int mlxsw_pci_remove ;
 int pci_register_driver (struct pci_driver*) ;

int mlxsw_pci_driver_register(struct pci_driver *pci_driver)
{
 pci_driver->probe = mlxsw_pci_probe;
 pci_driver->remove = mlxsw_pci_remove;
 return pci_register_driver(pci_driver);
}
