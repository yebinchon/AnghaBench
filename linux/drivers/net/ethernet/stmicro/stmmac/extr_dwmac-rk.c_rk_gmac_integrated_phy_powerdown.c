
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_priv_data {scalar_t__ phy_reset; int grf; } ;


 int RK_GRF_MACPHY_CON0 ;
 int RK_MACPHY_DISABLE ;
 int regmap_write (int ,int ,int ) ;
 int reset_control_assert (scalar_t__) ;

__attribute__((used)) static void rk_gmac_integrated_phy_powerdown(struct rk_priv_data *priv)
{
 regmap_write(priv->grf, RK_GRF_MACPHY_CON0, RK_MACPHY_DISABLE);
 if (priv->phy_reset)
  reset_control_assert(priv->phy_reset);
}
