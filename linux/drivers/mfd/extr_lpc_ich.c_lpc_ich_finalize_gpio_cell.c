
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mfd_cell {int pdata_size; int * platform_data; } ;
struct lpc_ich_priv {size_t chipset; } ;
struct lpc_ich_info {int dummy; } ;


 int * lpc_chipset_info ;
 struct mfd_cell lpc_ich_gpio_cell ;
 struct lpc_ich_priv* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void lpc_ich_finalize_gpio_cell(struct pci_dev *dev)
{
 struct lpc_ich_priv *priv = pci_get_drvdata(dev);
 struct mfd_cell *cell = &lpc_ich_gpio_cell;

 cell->platform_data = &lpc_chipset_info[priv->chipset];
 cell->pdata_size = sizeof(struct lpc_ich_info);
}
