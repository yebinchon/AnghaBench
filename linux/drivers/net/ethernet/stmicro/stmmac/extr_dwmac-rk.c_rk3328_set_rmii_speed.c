
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_priv_data {int grf; scalar_t__ integrated_phy; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int RK3328_GMAC_RMII_CLK_25M ;
 int RK3328_GMAC_RMII_CLK_2_5M ;
 int RK3328_GMAC_SPEED_100M ;
 int RK3328_GMAC_SPEED_10M ;
 unsigned int RK3328_GRF_MAC_CON1 ;
 unsigned int RK3328_GRF_MAC_CON2 ;
 int dev_err (struct device*,char*,...) ;
 int regmap_write (int ,unsigned int,int) ;

__attribute__((used)) static void rk3328_set_rmii_speed(struct rk_priv_data *bsp_priv, int speed)
{
 struct device *dev = &bsp_priv->pdev->dev;
 unsigned int reg;

 if (IS_ERR(bsp_priv->grf)) {
  dev_err(dev, "Missing rockchip,grf property\n");
  return;
 }

 reg = bsp_priv->integrated_phy ? RK3328_GRF_MAC_CON2 :
    RK3328_GRF_MAC_CON1;

 if (speed == 10)
  regmap_write(bsp_priv->grf, reg,
        RK3328_GMAC_RMII_CLK_2_5M |
        RK3328_GMAC_SPEED_10M);
 else if (speed == 100)
  regmap_write(bsp_priv->grf, reg,
        RK3328_GMAC_RMII_CLK_25M |
        RK3328_GMAC_SPEED_100M);
 else
  dev_err(dev, "unknown speed value for RMII! speed=%d", speed);
}
