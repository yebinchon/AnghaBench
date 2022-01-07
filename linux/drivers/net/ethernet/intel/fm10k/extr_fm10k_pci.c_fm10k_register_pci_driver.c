
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fm10k_driver ;
 int pci_register_driver (int *) ;

int fm10k_register_pci_driver(void)
{
 return pci_register_driver(&fm10k_driver);
}
