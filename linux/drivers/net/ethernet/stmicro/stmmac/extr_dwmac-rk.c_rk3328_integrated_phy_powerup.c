
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_priv_data {int grf; } ;


 int RK3328_GRF_MACPHY_CON1 ;
 int RK3328_MACPHY_RMII_MODE ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void rk3328_integrated_phy_powerup(struct rk_priv_data *priv)
{
 regmap_write(priv->grf, RK3328_GRF_MACPHY_CON1,
       RK3328_MACPHY_RMII_MODE);
}
