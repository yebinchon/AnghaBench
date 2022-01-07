
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ionic_driver ;
 int pci_register_driver (int *) ;

int ionic_bus_register_driver(void)
{
 return pci_register_driver(&ionic_driver);
}
