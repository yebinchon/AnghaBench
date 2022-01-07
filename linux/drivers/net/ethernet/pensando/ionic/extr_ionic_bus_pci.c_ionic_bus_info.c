
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic {int pdev; } ;


 char const* pci_name (int ) ;

const char *ionic_bus_info(struct ionic *ionic)
{
 return pci_name(ionic->pdev);
}
