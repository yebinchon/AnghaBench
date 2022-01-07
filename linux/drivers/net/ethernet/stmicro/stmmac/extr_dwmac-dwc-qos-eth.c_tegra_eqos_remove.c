
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_eqos {int clk_master; int clk_slave; int clk_rx; int clk_tx; int reset; int rst; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct tegra_eqos* get_stmmac_bsp_priv (int *) ;
 int gpiod_set_value (int ,int) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int tegra_eqos_remove(struct platform_device *pdev)
{
 struct tegra_eqos *eqos = get_stmmac_bsp_priv(&pdev->dev);

 reset_control_assert(eqos->rst);
 gpiod_set_value(eqos->reset, 1);
 clk_disable_unprepare(eqos->clk_tx);
 clk_disable_unprepare(eqos->clk_rx);
 clk_disable_unprepare(eqos->clk_slave);
 clk_disable_unprepare(eqos->clk_master);

 return 0;
}
