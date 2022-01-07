
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {struct mmc_host* mmc; } ;
struct renesas_sdhi {int clk; int clk_cd; } ;
struct mmc_host {int f_min; scalar_t__ f_max; } ;


 int clk_disable_unprepare (int ) ;
 scalar_t__ clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_round_rate (int ,int) ;
 struct renesas_sdhi* host_to_priv (struct tmio_mmc_host*) ;
 int max (int,long) ;
 int renesas_sdhi_sdbuf_width (struct tmio_mmc_host*,int) ;

__attribute__((used)) static int renesas_sdhi_clk_enable(struct tmio_mmc_host *host)
{
 struct mmc_host *mmc = host->mmc;
 struct renesas_sdhi *priv = host_to_priv(host);
 int ret = clk_prepare_enable(priv->clk);

 if (ret < 0)
  return ret;

 ret = clk_prepare_enable(priv->clk_cd);
 if (ret < 0) {
  clk_disable_unprepare(priv->clk);
  return ret;
 }







 if (!mmc->f_max)
  mmc->f_max = clk_get_rate(priv->clk);





 mmc->f_min = max(clk_round_rate(priv->clk, 1) / 512, 1L);


 renesas_sdhi_sdbuf_width(host, 16);

 return 0;
}
