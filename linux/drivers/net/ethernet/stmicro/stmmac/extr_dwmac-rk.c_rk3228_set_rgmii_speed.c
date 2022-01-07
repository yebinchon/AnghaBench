
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_priv_data {int grf; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int RK3228_GMAC_CLK_125M ;
 int RK3228_GMAC_CLK_25M ;
 int RK3228_GMAC_CLK_2_5M ;
 int RK3228_GRF_MAC_CON1 ;
 int dev_err (struct device*,char*,...) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void rk3228_set_rgmii_speed(struct rk_priv_data *bsp_priv, int speed)
{
 struct device *dev = &bsp_priv->pdev->dev;

 if (IS_ERR(bsp_priv->grf)) {
  dev_err(dev, "Missing rockchip,grf property\n");
  return;
 }

 if (speed == 10)
  regmap_write(bsp_priv->grf, RK3228_GRF_MAC_CON1,
        RK3228_GMAC_CLK_2_5M);
 else if (speed == 100)
  regmap_write(bsp_priv->grf, RK3228_GRF_MAC_CON1,
        RK3228_GMAC_CLK_25M);
 else if (speed == 1000)
  regmap_write(bsp_priv->grf, RK3228_GRF_MAC_CON1,
        RK3228_GMAC_CLK_125M);
 else
  dev_err(dev, "unknown speed value for RGMII! speed=%d", speed);
}
