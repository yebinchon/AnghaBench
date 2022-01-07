
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_priv_data {int grf; } ;


 int RK3228_GRF_CON_MUX ;
 int RK3228_GRF_CON_MUX_GMAC_INTEGRATED_PHY ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void rk3228_integrated_phy_powerup(struct rk_priv_data *priv)
{
 regmap_write(priv->grf, RK3228_GRF_CON_MUX,
       RK3228_GRF_CON_MUX_GMAC_INTEGRATED_PHY);
}
