
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ionic_driver ;
 int pci_unregister_driver (int *) ;

void ionic_bus_unregister_driver(void)
{
 pci_unregister_driver(&ionic_driver);
}
