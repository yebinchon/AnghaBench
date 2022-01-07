
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plat_stmmacenet_data {int bus_id; int interface; scalar_t__ phy_addr; } ;
struct pci_dev {int dummy; } ;


 int PHY_INTERFACE_MODE_RGMII ;
 int ehl_common_data (struct pci_dev*,struct plat_stmmacenet_data*) ;

__attribute__((used)) static int ehl_rgmii_data(struct pci_dev *pdev,
     struct plat_stmmacenet_data *plat)
{
 plat->bus_id = 1;
 plat->phy_addr = 0;
 plat->interface = PHY_INTERFACE_MODE_RGMII;
 return ehl_common_data(pdev, plat);
}
