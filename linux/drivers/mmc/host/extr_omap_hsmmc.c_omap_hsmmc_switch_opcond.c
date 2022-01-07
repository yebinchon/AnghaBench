
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_hsmmc_host {int mmc; int base; scalar_t__ dbclk; } ;


 int HCTL ;
 int MMC_VDD_23_24 ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 int SDVS18 ;
 int SDVS30 ;
 int SDVSCLR ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (int ,char*) ;
 int mmc_dev (int ) ;
 int omap_hsmmc_set_power (struct omap_hsmmc_host*,int) ;
 int set_sd_bus_power (struct omap_hsmmc_host*) ;

__attribute__((used)) static int omap_hsmmc_switch_opcond(struct omap_hsmmc_host *host, int vdd)
{
 u32 reg_val = 0;
 int ret;


 if (host->dbclk)
  clk_disable_unprepare(host->dbclk);


 ret = omap_hsmmc_set_power(host, 0);


 if (!ret)
  ret = omap_hsmmc_set_power(host, 1);
 if (host->dbclk)
  clk_prepare_enable(host->dbclk);

 if (ret != 0)
  goto err;

 OMAP_HSMMC_WRITE(host->base, HCTL,
  OMAP_HSMMC_READ(host->base, HCTL) & SDVSCLR);
 reg_val = OMAP_HSMMC_READ(host->base, HCTL);
 if ((1 << vdd) <= MMC_VDD_23_24)
  reg_val |= SDVS18;
 else
  reg_val |= SDVS30;

 OMAP_HSMMC_WRITE(host->base, HCTL, reg_val);
 set_sd_bus_power(host);

 return 0;
err:
 dev_err(mmc_dev(host->mmc), "Unable to switch operating voltage\n");
 return ret;
}
