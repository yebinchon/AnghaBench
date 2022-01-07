
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_priv_data {scalar_t__ interface; int clk_enabled; int tx_clk; scalar_t__ regulator; } ;
struct platform_device {int dummy; } ;


 scalar_t__ PHY_INTERFACE_MODE_RGMII ;
 int SUN7I_GMAC_GMII_RGMII_RATE ;
 int SUN7I_GMAC_MII_RATE ;
 int clk_prepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;
 int regulator_enable (scalar_t__) ;

__attribute__((used)) static int sun7i_gmac_init(struct platform_device *pdev, void *priv)
{
 struct sunxi_priv_data *gmac = priv;
 int ret;

 if (gmac->regulator) {
  ret = regulator_enable(gmac->regulator);
  if (ret)
   return ret;
 }







 if (gmac->interface == PHY_INTERFACE_MODE_RGMII) {
  clk_set_rate(gmac->tx_clk, SUN7I_GMAC_GMII_RGMII_RATE);
  clk_prepare_enable(gmac->tx_clk);
  gmac->clk_enabled = 1;
 } else {
  clk_set_rate(gmac->tx_clk, SUN7I_GMAC_MII_RATE);
  ret = clk_prepare(gmac->tx_clk);
  if (ret)
   return ret;
 }

 return 0;
}
