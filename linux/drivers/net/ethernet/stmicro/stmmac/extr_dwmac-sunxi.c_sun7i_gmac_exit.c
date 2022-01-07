
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_priv_data {scalar_t__ regulator; int tx_clk; scalar_t__ clk_enabled; } ;
struct platform_device {int dummy; } ;


 int clk_disable (int ) ;
 int clk_unprepare (int ) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static void sun7i_gmac_exit(struct platform_device *pdev, void *priv)
{
 struct sunxi_priv_data *gmac = priv;

 if (gmac->clk_enabled) {
  clk_disable(gmac->tx_clk);
  gmac->clk_enabled = 0;
 }
 clk_unprepare(gmac->tx_clk);

 if (gmac->regulator)
  regulator_disable(gmac->regulator);
}
