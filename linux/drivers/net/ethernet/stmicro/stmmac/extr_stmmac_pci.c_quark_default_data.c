
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct plat_stmmacenet_data {int phy_addr; TYPE_1__* dma_cfg; int interface; int bus_id; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int pbl; int pblx8; int fixed_burst; } ;


 int DMI_BOARD_NAME ;
 int PHY_INTERFACE_MODE_RMII ;
 int common_default_data (struct plat_stmmacenet_data*) ;
 scalar_t__ dmi_get_system_info (int ) ;
 int pci_dev_id (struct pci_dev*) ;
 int quark_pci_dmi ;
 int stmmac_pci_find_phy_addr (struct pci_dev*,int ) ;

__attribute__((used)) static int quark_default_data(struct pci_dev *pdev,
         struct plat_stmmacenet_data *plat)
{
 int ret;


 common_default_data(plat);





 ret = stmmac_pci_find_phy_addr(pdev, quark_pci_dmi);
 if (ret < 0) {

  if (dmi_get_system_info(DMI_BOARD_NAME))
   return ret;






  ret = 1;
 }

 plat->bus_id = pci_dev_id(pdev);
 plat->phy_addr = ret;
 plat->interface = PHY_INTERFACE_MODE_RMII;

 plat->dma_cfg->pbl = 16;
 plat->dma_cfg->pblx8 = 1;
 plat->dma_cfg->fixed_burst = 1;


 return 0;
}
