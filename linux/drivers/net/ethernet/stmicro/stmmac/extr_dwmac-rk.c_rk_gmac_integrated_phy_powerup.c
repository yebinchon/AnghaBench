
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_priv_data {int grf; scalar_t__ phy_reset; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* integrated_phy_powerup ) (struct rk_priv_data*) ;} ;


 int RK_GMAC2PHY_RMII_MODE ;
 int RK_GRF_CON2_MACPHY_ID ;
 int RK_GRF_CON3_MACPHY_ID ;
 int RK_GRF_MACPHY_CON0 ;
 int RK_GRF_MACPHY_CON2 ;
 int RK_GRF_MACPHY_CON3 ;
 int RK_MACPHY_CFG_CLK_50M ;
 int RK_MACPHY_DISABLE ;
 int RK_MACPHY_ENABLE ;
 int msleep (int) ;
 int regmap_write (int ,int ,int ) ;
 int reset_control_assert (scalar_t__) ;
 int reset_control_deassert (scalar_t__) ;
 int stub1 (struct rk_priv_data*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rk_gmac_integrated_phy_powerup(struct rk_priv_data *priv)
{
 if (priv->ops->integrated_phy_powerup)
  priv->ops->integrated_phy_powerup(priv);

 regmap_write(priv->grf, RK_GRF_MACPHY_CON0, RK_MACPHY_CFG_CLK_50M);
 regmap_write(priv->grf, RK_GRF_MACPHY_CON0, RK_GMAC2PHY_RMII_MODE);

 regmap_write(priv->grf, RK_GRF_MACPHY_CON2, RK_GRF_CON2_MACPHY_ID);
 regmap_write(priv->grf, RK_GRF_MACPHY_CON3, RK_GRF_CON3_MACPHY_ID);

 if (priv->phy_reset) {

  regmap_write(priv->grf, RK_GRF_MACPHY_CON0, RK_MACPHY_DISABLE);
  if (priv->phy_reset)
   reset_control_assert(priv->phy_reset);
  usleep_range(10, 20);
  if (priv->phy_reset)
   reset_control_deassert(priv->phy_reset);
  usleep_range(10, 20);
  regmap_write(priv->grf, RK_GRF_MACPHY_CON0, RK_MACPHY_ENABLE);
  msleep(30);
 }
}
