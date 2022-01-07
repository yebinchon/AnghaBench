
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int caps; } ;
struct TYPE_2__ {int generic_cmd6_time; } ;
struct mmc_card {TYPE_1__ ext_csd; struct mmc_host* host; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 int EXT_CSD_BUS_WIDTH ;


 int EXT_CSD_CMD_SET_NORMAL ;


 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_8_BIT_DATA ;
 int MMC_CAP_BUS_WIDTH_TEST ;
 int mmc_bus_test (struct mmc_card*,unsigned int) ;
 int mmc_can_ext_csd (struct mmc_card*) ;
 int mmc_compare_ext_csds (struct mmc_card*,unsigned int) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_set_bus_width (struct mmc_host*,unsigned int) ;
 int mmc_switch (struct mmc_card*,int ,int ,unsigned int,int ) ;
 int pr_warn (char*,int ,int) ;

__attribute__((used)) static int mmc_select_bus_width(struct mmc_card *card)
{
 static unsigned ext_csd_bits[] = {
  130,
  131,
 };
 static unsigned bus_widths[] = {
  128,
  129,
 };
 struct mmc_host *host = card->host;
 unsigned idx, bus_width = 0;
 int err = 0;

 if (!mmc_can_ext_csd(card) ||
     !(host->caps & (MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)))
  return 0;

 idx = (host->caps & MMC_CAP_8_BIT_DATA) ? 0 : 1;







 for (; idx < ARRAY_SIZE(bus_widths); idx++) {







  err = mmc_switch(card, EXT_CSD_CMD_SET_NORMAL,
     EXT_CSD_BUS_WIDTH,
     ext_csd_bits[idx],
     card->ext_csd.generic_cmd6_time);
  if (err)
   continue;

  bus_width = bus_widths[idx];
  mmc_set_bus_width(host, bus_width);






  if (!(host->caps & MMC_CAP_BUS_WIDTH_TEST))
   err = mmc_compare_ext_csds(card, bus_width);
  else
   err = mmc_bus_test(card, bus_width);

  if (!err) {
   err = bus_width;
   break;
  } else {
   pr_warn("%s: switch to bus width %d failed\n",
    mmc_hostname(host), 1 << bus_width);
  }
 }

 return err;
}
