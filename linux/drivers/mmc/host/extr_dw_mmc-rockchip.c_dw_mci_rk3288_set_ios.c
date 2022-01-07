
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_ios {int clock; scalar_t__ bus_width; int timing; } ;
struct dw_mci_rockchip_priv_data {int default_sample_phase; int drv_clk; int sample_clk; } ;
struct dw_mci {int bus_hz; scalar_t__ current_speed; int ciu_clk; int dev; struct dw_mci_rockchip_priv_data* priv; } ;


 int IS_ERR (int ) ;
 scalar_t__ MMC_BUS_WIDTH_8 ;



 int RK3288_CLKGEN_DIV ;
 int clk_get_rate (int ) ;
 int clk_set_phase (int ,int) ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_warn (int ,char*,int) ;

__attribute__((used)) static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
{
 struct dw_mci_rockchip_priv_data *priv = host->priv;
 int ret;
 unsigned int cclkin;
 u32 bus_hz;

 if (ios->clock == 0)
  return;
 if (ios->bus_width == MMC_BUS_WIDTH_8 &&
     ios->timing == 130)
  cclkin = 2 * ios->clock * RK3288_CLKGEN_DIV;
 else
  cclkin = ios->clock * RK3288_CLKGEN_DIV;

 ret = clk_set_rate(host->ciu_clk, cclkin);
 if (ret)
  dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);

 bus_hz = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
 if (bus_hz != host->bus_hz) {
  host->bus_hz = bus_hz;

  host->current_speed = 0;
 }


 if (!IS_ERR(priv->sample_clk))
  clk_set_phase(priv->sample_clk, priv->default_sample_phase);
 if (!IS_ERR(priv->drv_clk)) {
  int phase;







  phase = 90;

  switch (ios->timing) {
  case 130:





   if (ios->bus_width == MMC_BUS_WIDTH_8)
    phase = 180;
   break;
  case 128:
  case 129:
   phase = 180;
   break;
  }

  clk_set_phase(priv->drv_clk, phase);
 }
}
