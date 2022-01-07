
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aq_pci_ops ;
 int pci_unregister_driver (int *) ;

void aq_pci_func_unregister_driver(void)
{
 pci_unregister_driver(&aq_pci_ops);
}
