
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_omap_slot {scalar_t__ vdd; int power_mode; int saved_con; int bus_mode; int id; TYPE_1__* pdata; struct mmc_omap_host* host; } ;
struct mmc_omap_host {int dummy; } ;
struct mmc_ios {scalar_t__ vdd; int power_mode; int bus_mode; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int (* set_bus_mode ) (int ,int ,int ) ;} ;


 int CMD ;
 int CON ;
 int IE ;



 int OMAP_MMC_READ (struct mmc_omap_host*,int ) ;
 int OMAP_MMC_WRITE (struct mmc_omap_host*,int ,int) ;
 int STAT ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_omap_calc_divisor (struct mmc_host*,struct mmc_ios*) ;
 int mmc_omap_fclk_enable (struct mmc_omap_host*,int) ;
 int mmc_omap_release_slot (struct mmc_omap_slot*,int) ;
 int mmc_omap_select_slot (struct mmc_omap_slot*,int ) ;
 int mmc_omap_set_power (struct mmc_omap_slot*,int,scalar_t__) ;
 struct mmc_omap_slot* mmc_priv (struct mmc_host*) ;
 int stub1 (int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void mmc_omap_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct mmc_omap_slot *slot = mmc_priv(mmc);
 struct mmc_omap_host *host = slot->host;
 int i, dsor;
 int clk_enabled, init_stream;

 mmc_omap_select_slot(slot, 0);

 dsor = mmc_omap_calc_divisor(mmc, ios);

 if (ios->vdd != slot->vdd)
  slot->vdd = ios->vdd;

 clk_enabled = 0;
 init_stream = 0;
 switch (ios->power_mode) {
 case 130:
  mmc_omap_set_power(slot, 0, ios->vdd);
  break;
 case 128:

  mmc_omap_set_power(slot, 1, ios->vdd);
  slot->power_mode = ios->power_mode;
  goto exit;
 case 129:
  mmc_omap_fclk_enable(host, 1);
  clk_enabled = 1;
  dsor |= 1 << 11;
  if (slot->power_mode != 129)
   init_stream = 1;
  break;
 }
 slot->power_mode = ios->power_mode;

 if (slot->bus_mode != ios->bus_mode) {
  if (slot->pdata->set_bus_mode != ((void*)0))
   slot->pdata->set_bus_mode(mmc_dev(mmc), slot->id,
        ios->bus_mode);
  slot->bus_mode = ios->bus_mode;
 }





 for (i = 0; i < 2; i++)
  OMAP_MMC_WRITE(host, CON, dsor);
 slot->saved_con = dsor;
 if (init_stream) {

  int usecs = 250;


  OMAP_MMC_WRITE(host, IE, 0);
  OMAP_MMC_WRITE(host, STAT, 0xffff);
  OMAP_MMC_WRITE(host, CMD, 1 << 7);
  while (usecs > 0 && (OMAP_MMC_READ(host, STAT) & 1) == 0) {
   udelay(1);
   usecs--;
  }
  OMAP_MMC_WRITE(host, STAT, 1);
 }

exit:
 mmc_omap_release_slot(slot, clk_enabled);
}
