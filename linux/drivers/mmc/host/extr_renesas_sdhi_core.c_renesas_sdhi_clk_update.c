
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {TYPE_1__* pdata; } ;
struct renesas_sdhi {int clk; } ;
struct TYPE_2__ {int flags; } ;


 int TMIO_MMC_MIN_RCAR2 ;
 unsigned int UINT_MAX ;
 unsigned int clk_get_rate (int ) ;
 unsigned int clk_round_rate (int ,unsigned int) ;
 int clk_set_rate (int ,unsigned int) ;
 struct renesas_sdhi* host_to_priv (struct tmio_mmc_host*) ;
 int ilog2 (unsigned int) ;
 int min (int,int ) ;

__attribute__((used)) static unsigned int renesas_sdhi_clk_update(struct tmio_mmc_host *host,
         unsigned int new_clock)
{
 struct renesas_sdhi *priv = host_to_priv(host);
 unsigned int freq, diff, best_freq = 0, diff_min = ~0;
 int i;


 if (!(host->pdata->flags & TMIO_MMC_MIN_RCAR2))
  return clk_get_rate(priv->clk);







 for (i = min(9, ilog2(UINT_MAX / new_clock)); i >= 0; i--) {
  freq = clk_round_rate(priv->clk, new_clock << i);
  if (freq > (new_clock << i)) {

   freq = clk_round_rate(priv->clk,
           (new_clock << i) / 4 * 3);
   if (freq > (new_clock << i))
    continue;
  }

  diff = new_clock - (freq >> i);
  if (diff <= diff_min) {
   best_freq = freq;
   diff_min = diff;
  }
 }

 clk_set_rate(priv->clk, best_freq);

 return clk_get_rate(priv->clk);
}
