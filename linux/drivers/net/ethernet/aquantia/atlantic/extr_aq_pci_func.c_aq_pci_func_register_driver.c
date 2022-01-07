
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aq_pci_ops ;
 int pci_register_driver (int *) ;

int aq_pci_func_register_driver(void)
{
 return pci_register_driver(&aq_pci_ops);
}
