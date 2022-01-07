
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_priv_data {scalar_t__ interface; int clk_enabled; int tx_clk; } ;


 scalar_t__ PHY_INTERFACE_MODE_GMII ;
 int SUN7I_GMAC_GMII_RGMII_RATE ;
 int SUN7I_GMAC_MII_RATE ;
 int clk_disable (int ) ;
 int clk_prepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;
 int clk_unprepare (int ) ;

__attribute__((used)) static void sun7i_fix_speed(void *priv, unsigned int speed)
{
 struct sunxi_priv_data *gmac = priv;


 if (gmac->interface != PHY_INTERFACE_MODE_GMII)
  return;

 if (gmac->clk_enabled) {
  clk_disable(gmac->tx_clk);
  gmac->clk_enabled = 0;
 }
 clk_unprepare(gmac->tx_clk);

 if (speed == 1000) {
  clk_set_rate(gmac->tx_clk, SUN7I_GMAC_GMII_RGMII_RATE);
  clk_prepare_enable(gmac->tx_clk);
  gmac->clk_enabled = 1;
 } else {
  clk_set_rate(gmac->tx_clk, SUN7I_GMAC_MII_RATE);
  clk_prepare(gmac->tx_clk);
 }
}
