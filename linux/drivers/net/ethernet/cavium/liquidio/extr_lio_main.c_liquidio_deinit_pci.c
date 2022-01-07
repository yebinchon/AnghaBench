
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int liquidio_pci_driver ;
 int pci_unregister_driver (int *) ;

__attribute__((used)) static void liquidio_deinit_pci(void)
{
 pci_unregister_driver(&liquidio_pci_driver);
}
