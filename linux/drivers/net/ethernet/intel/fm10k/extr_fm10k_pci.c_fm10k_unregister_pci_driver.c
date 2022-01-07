
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fm10k_driver ;
 int pci_unregister_driver (int *) ;

void fm10k_unregister_pci_driver(void)
{
 pci_unregister_driver(&fm10k_driver);
}
