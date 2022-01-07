
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson8b_dwmac {int phy_mode; int dev; } ;


 int EINVAL ;





 int PRG_ETH0 ;
 int PRG_ETH0_EXT_PHY_MODE_MASK ;
 int PRG_ETH0_EXT_RGMII_MODE ;
 int PRG_ETH0_EXT_RMII_MODE ;
 int dev_err (int ,char*,int ) ;
 int meson8b_dwmac_mask_bits (struct meson8b_dwmac*,int ,int ,int ) ;
 int phy_modes (int) ;

__attribute__((used)) static int meson_axg_set_phy_mode(struct meson8b_dwmac *dwmac)
{
 switch (dwmac->phy_mode) {
 case 132:
 case 130:
 case 131:
 case 129:

  meson8b_dwmac_mask_bits(dwmac, PRG_ETH0,
     PRG_ETH0_EXT_PHY_MODE_MASK,
     PRG_ETH0_EXT_RGMII_MODE);
  break;
 case 128:

  meson8b_dwmac_mask_bits(dwmac, PRG_ETH0,
     PRG_ETH0_EXT_PHY_MODE_MASK,
     PRG_ETH0_EXT_RMII_MODE);
  break;
 default:
  dev_err(dwmac->dev, "fail to set phy-mode %s\n",
   phy_modes(dwmac->phy_mode));
  return -EINVAL;
 }

 return 0;
}
