
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_sd_priv {int clk_rate; int caps; int clk; int rst; int rst_br; } ;
struct tmio_mmc_host {struct mmc_host* mmc; } ;
struct mmc_host {int f_max; int f_min; } ;


 int ULONG_MAX ;
 int UNIPHIER_SD_CAP_EXTENDED_IP ;
 int clk_disable_unprepare (int ) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 struct uniphier_sd_priv* uniphier_sd_priv (struct tmio_mmc_host*) ;

__attribute__((used)) static int uniphier_sd_clk_enable(struct tmio_mmc_host *host)
{
 struct uniphier_sd_priv *priv = uniphier_sd_priv(host);
 struct mmc_host *mmc = host->mmc;
 int ret;

 ret = clk_prepare_enable(priv->clk);
 if (ret)
  return ret;

 ret = clk_set_rate(priv->clk, ULONG_MAX);
 if (ret)
  goto disable_clk;

 priv->clk_rate = clk_get_rate(priv->clk);


 if (!mmc->f_max)
  mmc->f_max = priv->clk_rate;





 if (priv->caps & UNIPHIER_SD_CAP_EXTENDED_IP)
  mmc->f_min = priv->clk_rate / 1024;
 else
  mmc->f_min = priv->clk_rate / 512;

 ret = reset_control_deassert(priv->rst);
 if (ret)
  goto disable_clk;

 ret = reset_control_deassert(priv->rst_br);
 if (ret)
  goto assert_rst;

 return 0;

assert_rst:
 reset_control_assert(priv->rst);
disable_clk:
 clk_disable_unprepare(priv->clk);

 return ret;
}
