
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct g12a_mdio_mux {int pclk; int pll; scalar_t__ pll_is_enabled; int mux_handle; } ;


 int clk_disable_unprepare (int ) ;
 int mdio_mux_uninit (int ) ;
 struct g12a_mdio_mux* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int g12a_mdio_mux_remove(struct platform_device *pdev)
{
 struct g12a_mdio_mux *priv = platform_get_drvdata(pdev);

 mdio_mux_uninit(priv->mux_handle);

 if (priv->pll_is_enabled)
  clk_disable_unprepare(priv->pll);

 clk_disable_unprepare(priv->pclk);

 return 0;
}
