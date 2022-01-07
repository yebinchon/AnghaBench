
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mmc_ios {int power_mode; int bus_width; scalar_t__ timing; int clock; int vdd; } ;
struct TYPE_2__ {int vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;
struct cvm_mmc_slot {int clock; int cached_switch; int bus_id; struct cvm_mmc_host* host; } ;
struct cvm_mmc_host {int sys_freq; int (* release_bus ) (struct cvm_mmc_host*) ;int (* set_shared_power ) (struct cvm_mmc_host*,int) ;int global_pwr_gpiod; int (* acquire_bus ) (struct cvm_mmc_host*) ;} ;


 int FIELD_PREP (int ,int) ;
 int IS_ERR (int ) ;
 int MIO_EMM_SWITCH_BUS_WIDTH ;
 int MIO_EMM_SWITCH_CLK_HI ;
 int MIO_EMM_SWITCH_CLK_LO ;
 int MIO_EMM_SWITCH_HS_TIMING ;
 int MIO_EMM_SWITCH_POWER_CLASS ;






 scalar_t__ MMC_TIMING_MMC_DDR52 ;
 scalar_t__ MMC_TIMING_MMC_HS ;
 int cvm_mmc_reset_bus (struct cvm_mmc_slot*) ;
 int cvm_mmc_switch_to (struct cvm_mmc_slot*) ;
 int do_switch (struct cvm_mmc_host*,int) ;
 struct cvm_mmc_slot* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_ocr (struct mmc_host*,int ,int ) ;
 int set_bus_id (int*,int ) ;
 int set_wdog (struct cvm_mmc_slot*,int ) ;
 int stub1 (struct cvm_mmc_host*) ;
 int stub2 (struct cvm_mmc_host*,int) ;
 int stub3 (struct cvm_mmc_host*,int) ;
 int stub4 (struct cvm_mmc_host*) ;
 int switch_val_changed (struct cvm_mmc_slot*,int) ;

__attribute__((used)) static void cvm_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct cvm_mmc_slot *slot = mmc_priv(mmc);
 struct cvm_mmc_host *host = slot->host;
 int clk_period = 0, power_class = 10, bus_width = 0;
 u64 clock, emm_switch;

 host->acquire_bus(host);
 cvm_mmc_switch_to(slot);


 switch (ios->power_mode) {
 case 129:
  break;

 case 130:
  cvm_mmc_reset_bus(slot);
  if (host->global_pwr_gpiod)
   host->set_shared_power(host, 0);
  else if (!IS_ERR(mmc->supply.vmmc))
   mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, 0);
  break;

 case 128:
  if (host->global_pwr_gpiod)
   host->set_shared_power(host, 1);
  else if (!IS_ERR(mmc->supply.vmmc))
   mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, ios->vdd);
  break;
 }


 switch (ios->bus_width) {
 case 131:
  bus_width = 2;
  break;
 case 132:
  bus_width = 1;
  break;
 case 133:
  bus_width = 0;
  break;
 }


 if (ios->bus_width && ios->timing == MMC_TIMING_MMC_DDR52)
  bus_width |= 4;


 clock = ios->clock;
 if (clock > 52000000)
  clock = 52000000;
 slot->clock = clock;

 if (clock)
  clk_period = (host->sys_freq + clock - 1) / (2 * clock);

 emm_switch = FIELD_PREP(MIO_EMM_SWITCH_HS_TIMING,
    (ios->timing == MMC_TIMING_MMC_HS)) |
       FIELD_PREP(MIO_EMM_SWITCH_BUS_WIDTH, bus_width) |
       FIELD_PREP(MIO_EMM_SWITCH_POWER_CLASS, power_class) |
       FIELD_PREP(MIO_EMM_SWITCH_CLK_HI, clk_period) |
       FIELD_PREP(MIO_EMM_SWITCH_CLK_LO, clk_period);
 set_bus_id(&emm_switch, slot->bus_id);

 if (!switch_val_changed(slot, emm_switch))
  goto out;

 set_wdog(slot, 0);
 do_switch(host, emm_switch);
 slot->cached_switch = emm_switch;
out:
 host->release_bus(host);
}
