
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_sd_priv {int rst_hw; } ;
struct tmio_mmc_host {int dummy; } ;


 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int udelay (int) ;
 struct uniphier_sd_priv* uniphier_sd_priv (struct tmio_mmc_host*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void uniphier_sd_hw_reset(struct tmio_mmc_host *host)
{
 struct uniphier_sd_priv *priv = uniphier_sd_priv(host);

 reset_control_assert(priv->rst_hw);

 udelay(9);
 reset_control_deassert(priv->rst_hw);

 usleep_range(300, 1000);
}
