
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_priv_data {int grf; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int RK3328_GMAC_CLK_RX_DL_CFG (int) ;
 int RK3328_GMAC_CLK_TX_DL_CFG (int) ;
 int RK3328_GMAC_PHY_INTF_SEL_RGMII ;
 int RK3328_GMAC_RMII_MODE_CLR ;
 int RK3328_GMAC_RXCLK_DLY_ENABLE ;
 int RK3328_GMAC_TXCLK_DLY_ENABLE ;
 int RK3328_GRF_MAC_CON0 ;
 int RK3328_GRF_MAC_CON1 ;
 int dev_err (struct device*,char*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void rk3328_set_to_rgmii(struct rk_priv_data *bsp_priv,
    int tx_delay, int rx_delay)
{
 struct device *dev = &bsp_priv->pdev->dev;

 if (IS_ERR(bsp_priv->grf)) {
  dev_err(dev, "Missing rockchip,grf property\n");
  return;
 }

 regmap_write(bsp_priv->grf, RK3328_GRF_MAC_CON1,
       RK3328_GMAC_PHY_INTF_SEL_RGMII |
       RK3328_GMAC_RMII_MODE_CLR |
       RK3328_GMAC_RXCLK_DLY_ENABLE |
       RK3328_GMAC_TXCLK_DLY_ENABLE);

 regmap_write(bsp_priv->grf, RK3328_GRF_MAC_CON0,
       RK3328_GMAC_CLK_RX_DL_CFG(rx_delay) |
       RK3328_GMAC_CLK_TX_DL_CFG(tx_delay));
}
