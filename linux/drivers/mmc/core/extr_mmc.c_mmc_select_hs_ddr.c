
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int bus_width; } ;
struct mmc_host {int caps; TYPE_1__ ios; } ;
struct TYPE_4__ {int generic_cmd6_time; } ;
struct mmc_card {int mmc_avail_type; TYPE_2__ ext_csd; struct mmc_host* host; } ;


 int EXT_CSD_BUS_WIDTH ;
 int EXT_CSD_CARD_TYPE_DDR_1_2V ;
 int EXT_CSD_CARD_TYPE_DDR_1_8V ;
 int EXT_CSD_CARD_TYPE_DDR_52 ;
 int EXT_CSD_CMD_SET_NORMAL ;
 int EXT_CSD_DDR_BUS_WIDTH_4 ;
 int EXT_CSD_DDR_BUS_WIDTH_8 ;
 int MMC_BUS_WIDTH_1 ;
 int MMC_BUS_WIDTH_8 ;
 int MMC_CAP_1_8V_DDR ;
 int MMC_SIGNAL_VOLTAGE_120 ;
 int MMC_SIGNAL_VOLTAGE_180 ;
 int MMC_SIGNAL_VOLTAGE_330 ;
 int MMC_TIMING_MMC_DDR52 ;
 int __mmc_switch (struct mmc_card*,int ,int ,int,int ,int ,int,int,int) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_set_signal_voltage (struct mmc_host*,int ) ;
 int pr_err (char*,int ,int) ;

__attribute__((used)) static int mmc_select_hs_ddr(struct mmc_card *card)
{
 struct mmc_host *host = card->host;
 u32 bus_width, ext_csd_bits;
 int err = 0;

 if (!(card->mmc_avail_type & EXT_CSD_CARD_TYPE_DDR_52))
  return 0;

 bus_width = host->ios.bus_width;
 if (bus_width == MMC_BUS_WIDTH_1)
  return 0;

 ext_csd_bits = (bus_width == MMC_BUS_WIDTH_8) ?
  EXT_CSD_DDR_BUS_WIDTH_8 : EXT_CSD_DDR_BUS_WIDTH_4;

 err = __mmc_switch(card, EXT_CSD_CMD_SET_NORMAL,
      EXT_CSD_BUS_WIDTH,
      ext_csd_bits,
      card->ext_csd.generic_cmd6_time,
      MMC_TIMING_MMC_DDR52,
      1, 1, 1);
 if (err) {
  pr_err("%s: switch to bus width %d ddr failed\n",
   mmc_hostname(host), 1 << bus_width);
  return err;
 }
 if (card->mmc_avail_type & EXT_CSD_CARD_TYPE_DDR_1_2V) {
  err = mmc_set_signal_voltage(host, MMC_SIGNAL_VOLTAGE_120);
  if (!err)
   return 0;
 }

 if (card->mmc_avail_type & EXT_CSD_CARD_TYPE_DDR_1_8V &&
     host->caps & MMC_CAP_1_8V_DDR)
  err = mmc_set_signal_voltage(host, MMC_SIGNAL_VOLTAGE_180);


 if (err)
  err = mmc_set_signal_voltage(host, MMC_SIGNAL_VOLTAGE_330);

 return err;
}
