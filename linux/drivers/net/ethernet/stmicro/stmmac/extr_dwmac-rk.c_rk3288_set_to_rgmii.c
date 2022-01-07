
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_priv_data {int grf; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DELAY_ENABLE (int ,int,int) ;
 scalar_t__ IS_ERR (int ) ;
 int RK3288 ;
 int RK3288_GMAC_CLK_RX_DL_CFG (int) ;
 int RK3288_GMAC_CLK_TX_DL_CFG (int) ;
 int RK3288_GMAC_PHY_INTF_SEL_RGMII ;
 int RK3288_GMAC_RMII_MODE_CLR ;
 int RK3288_GRF_SOC_CON1 ;
 int RK3288_GRF_SOC_CON3 ;
 int dev_err (struct device*,char*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void rk3288_set_to_rgmii(struct rk_priv_data *bsp_priv,
    int tx_delay, int rx_delay)
{
 struct device *dev = &bsp_priv->pdev->dev;

 if (IS_ERR(bsp_priv->grf)) {
  dev_err(dev, "Missing rockchip,grf property\n");
  return;
 }

 regmap_write(bsp_priv->grf, RK3288_GRF_SOC_CON1,
       RK3288_GMAC_PHY_INTF_SEL_RGMII |
       RK3288_GMAC_RMII_MODE_CLR);
 regmap_write(bsp_priv->grf, RK3288_GRF_SOC_CON3,
       DELAY_ENABLE(RK3288, tx_delay, rx_delay) |
       RK3288_GMAC_CLK_RX_DL_CFG(rx_delay) |
       RK3288_GMAC_CLK_TX_DL_CFG(tx_delay));
}
