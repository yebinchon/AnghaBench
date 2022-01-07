
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_priv_data {int internal_phy_powered; int ephy_clk; int rst_ephy; } ;
struct stmmac_priv {int device; TYPE_1__* plat; } ;
struct TYPE_2__ {struct sunxi_priv_data* bsp_priv; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int sun8i_dwmac_power_internal_phy(struct stmmac_priv *priv)
{
 struct sunxi_priv_data *gmac = priv->plat->bsp_priv;
 int ret;

 if (gmac->internal_phy_powered) {
  dev_warn(priv->device, "Internal PHY already powered\n");
  return 0;
 }

 dev_info(priv->device, "Powering internal PHY\n");
 ret = clk_prepare_enable(gmac->ephy_clk);
 if (ret) {
  dev_err(priv->device, "Cannot enable internal PHY\n");
  return ret;
 }




 reset_control_assert(gmac->rst_ephy);

 ret = reset_control_deassert(gmac->rst_ephy);
 if (ret) {
  dev_err(priv->device, "Cannot deassert internal phy\n");
  clk_disable_unprepare(gmac->ephy_clk);
  return ret;
 }

 gmac->internal_phy_powered = 1;

 return 0;
}
