
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mediatek_dwmac_plat_data {int rmii_rxc; int phy_mode; int peri_regmap; int dev; } ;


 int EINVAL ;
 int PERI_ETH_PHY_INTF_SEL ;






 int PHY_INTF_MII ;
 int PHY_INTF_RGMII ;
 int PHY_INTF_RMII ;
 int RMII_CLK_SRC_RXC ;
 int dev_err (int ,char*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int mt2712_set_interface(struct mediatek_dwmac_plat_data *plat)
{
 int rmii_rxc = plat->rmii_rxc ? RMII_CLK_SRC_RXC : 0;
 u32 intf_val = 0;


 switch (plat->phy_mode) {
 case 133:
  intf_val |= PHY_INTF_MII;
  break;
 case 128:
  intf_val |= (PHY_INTF_RMII | rmii_rxc);
  break;
 case 132:
 case 129:
 case 130:
 case 131:
  intf_val |= PHY_INTF_RGMII;
  break;
 default:
  dev_err(plat->dev, "phy interface not supported\n");
  return -EINVAL;
 }

 regmap_write(plat->peri_regmap, PERI_ETH_PHY_INTF_SEL, intf_val);

 return 0;
}
