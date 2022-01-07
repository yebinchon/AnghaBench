
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sunxi_priv_data {int regmap_field; } ;
struct stmmac_priv {int device; TYPE_1__* plat; } ;
struct TYPE_2__ {struct sunxi_priv_data* bsp_priv; } ;




 int EINVAL ;
 int H3_EPHY_MUX_MASK ;
 int H3_EPHY_SELECT ;
 int H3_EPHY_SHUTDOWN ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int regmap_field_read (int ,int*) ;
 int regmap_field_write (int ,int) ;
 int sun8i_dwmac_power_internal_phy (struct stmmac_priv*) ;
 int sun8i_dwmac_reset (struct stmmac_priv*) ;
 int sun8i_dwmac_unpower_internal_phy (struct sunxi_priv_data*) ;

__attribute__((used)) static int mdio_mux_syscon_switch_fn(int current_child, int desired_child,
         void *data)
{
 struct stmmac_priv *priv = data;
 struct sunxi_priv_data *gmac = priv->plat->bsp_priv;
 u32 reg, val;
 int ret = 0;
 bool need_power_ephy = 0;

 if (current_child ^ desired_child) {
  regmap_field_read(gmac->regmap_field, &reg);
  switch (desired_child) {
  case 128:
   dev_info(priv->device, "Switch mux to internal PHY");
   val = (reg & ~H3_EPHY_MUX_MASK) | H3_EPHY_SELECT;

   need_power_ephy = 1;
   break;
  case 129:
   dev_info(priv->device, "Switch mux to external PHY");
   val = (reg & ~H3_EPHY_MUX_MASK) | H3_EPHY_SHUTDOWN;
   need_power_ephy = 0;
   break;
  default:
   dev_err(priv->device, "Invalid child ID %x\n",
    desired_child);
   return -EINVAL;
  }
  regmap_field_write(gmac->regmap_field, val);
  if (need_power_ephy) {
   ret = sun8i_dwmac_power_internal_phy(priv);
   if (ret)
    return ret;
  } else {
   sun8i_dwmac_unpower_internal_phy(gmac);
  }



  ret = sun8i_dwmac_reset(priv);
 }
 return ret;
}
