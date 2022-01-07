
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_dwmac {int interface; int speed; int (* fix_retime_src ) (struct sti_dwmac*,int ) ;scalar_t__ gmac_en; int ctrl_reg; struct regmap* regmap; } ;
struct regmap {int dummy; } ;


 int EN ;
 int ENMII ;
 int ENMII_MASK ;
 int EN_MASK ;
 int MII_PHY_SEL_MASK ;
 int PHY_INTERFACE_MODE_REVMII ;
 int * phy_intf_sels ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int stub1 (struct sti_dwmac*,int ) ;

__attribute__((used)) static int sti_dwmac_set_mode(struct sti_dwmac *dwmac)
{
 struct regmap *regmap = dwmac->regmap;
 int iface = dwmac->interface;
 u32 reg = dwmac->ctrl_reg;
 u32 val;

 if (dwmac->gmac_en)
  regmap_update_bits(regmap, reg, EN_MASK, EN);

 regmap_update_bits(regmap, reg, MII_PHY_SEL_MASK, phy_intf_sels[iface]);

 val = (iface == PHY_INTERFACE_MODE_REVMII) ? 0 : ENMII;
 regmap_update_bits(regmap, reg, ENMII_MASK, val);

 dwmac->fix_retime_src(dwmac, dwmac->speed);

 return 0;
}
