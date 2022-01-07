
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int clock; int timing; } ;
struct k3_priv {int cur_speed; } ;
struct dw_mci {unsigned long bus_hz; scalar_t__ current_speed; int ciu_clk; int dev; struct k3_priv* priv; } ;


 int GENCLK_DIV ;
 unsigned long clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 int dev_err (int ,char*,unsigned long) ;
 int dw_mci_hs_set_timing (struct dw_mci*,int ,int) ;

__attribute__((used)) static void dw_mci_hi3660_set_ios(struct dw_mci *host, struct mmc_ios *ios)
{
 int ret;
 unsigned long wanted;
 unsigned long actual;
 struct k3_priv *priv = host->priv;

 if (!ios->clock || ios->clock == priv->cur_speed)
  return;

 wanted = ios->clock * (GENCLK_DIV + 1);
 ret = clk_set_rate(host->ciu_clk, wanted);
 if (ret) {
  dev_err(host->dev, "failed to set rate %luHz\n", wanted);
  return;
 }
 actual = clk_get_rate(host->ciu_clk);

 dw_mci_hs_set_timing(host, ios->timing, -1);
 host->bus_hz = actual / (GENCLK_DIV + 1);
 host->current_speed = 0;
 priv->cur_speed = host->bus_hz;
}
