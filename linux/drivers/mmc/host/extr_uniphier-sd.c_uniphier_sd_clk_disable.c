
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_sd_priv {int clk; int rst; int rst_br; } ;
struct tmio_mmc_host {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int reset_control_assert (int ) ;
 struct uniphier_sd_priv* uniphier_sd_priv (struct tmio_mmc_host*) ;

__attribute__((used)) static void uniphier_sd_clk_disable(struct tmio_mmc_host *host)
{
 struct uniphier_sd_priv *priv = uniphier_sd_priv(host);

 reset_control_assert(priv->rst_br);
 reset_control_assert(priv->rst);
 clk_disable_unprepare(priv->clk);
}
