
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct dw_mci_exynos_priv_data {unsigned int cur_speed; } ;
struct dw_mci {unsigned long bus_hz; scalar_t__ current_speed; int ciu_clk; int dev; struct dw_mci_exynos_priv_data* priv; } ;


 unsigned int EXYNOS_CCLKIN_MIN ;
 scalar_t__ IS_ERR (int ) ;
 unsigned long clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_warn (int ,char*,unsigned int,int) ;
 unsigned int dw_mci_exynos_get_ciu_div (struct dw_mci*) ;

__attribute__((used)) static void dw_mci_exynos_adjust_clock(struct dw_mci *host, unsigned int wanted)
{
 struct dw_mci_exynos_priv_data *priv = host->priv;
 unsigned long actual;
 u8 div;
 int ret;




 if (!wanted || IS_ERR(host->ciu_clk))
  return;


 if (wanted < EXYNOS_CCLKIN_MIN)
  wanted = EXYNOS_CCLKIN_MIN;

 if (wanted == priv->cur_speed)
  return;

 div = dw_mci_exynos_get_ciu_div(host);
 ret = clk_set_rate(host->ciu_clk, wanted * div);
 if (ret)
  dev_warn(host->dev,
   "failed to set clk-rate %u error: %d\n",
   wanted * div, ret);
 actual = clk_get_rate(host->ciu_clk);
 host->bus_hz = actual / div;
 priv->cur_speed = wanted;
 host->current_speed = 0;
}
