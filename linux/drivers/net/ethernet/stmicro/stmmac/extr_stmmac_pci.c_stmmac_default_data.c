
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct plat_stmmacenet_data {int bus_id; TYPE_1__* dma_cfg; int interface; scalar_t__ phy_addr; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int pbl; int pblx8; } ;


 int PHY_INTERFACE_MODE_GMII ;
 int common_default_data (struct plat_stmmacenet_data*) ;

__attribute__((used)) static int stmmac_default_data(struct pci_dev *pdev,
          struct plat_stmmacenet_data *plat)
{

 common_default_data(plat);

 plat->bus_id = 1;
 plat->phy_addr = 0;
 plat->interface = PHY_INTERFACE_MODE_GMII;

 plat->dma_cfg->pbl = 32;
 plat->dma_cfg->pblx8 = 1;


 return 0;
}
