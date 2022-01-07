
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int liquidio_pci_driver ;
 int pci_register_driver (int *) ;

__attribute__((used)) static int liquidio_init_pci(void)
{
 return pci_register_driver(&liquidio_pci_driver);
}
