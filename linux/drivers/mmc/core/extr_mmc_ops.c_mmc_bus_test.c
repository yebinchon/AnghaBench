
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mmc_card {int host; } ;


 int EINVAL ;
 int MMC_BUS_TEST_R ;
 int MMC_BUS_TEST_W ;
 scalar_t__ MMC_BUS_WIDTH_1 ;
 scalar_t__ MMC_BUS_WIDTH_4 ;
 scalar_t__ MMC_BUS_WIDTH_8 ;
 int mmc_send_bus_test (struct mmc_card*,int ,int ,int) ;

int mmc_bus_test(struct mmc_card *card, u8 bus_width)
{
 int width;

 if (bus_width == MMC_BUS_WIDTH_8)
  width = 8;
 else if (bus_width == MMC_BUS_WIDTH_4)
  width = 4;
 else if (bus_width == MMC_BUS_WIDTH_1)
  return 0;
 else
  return -EINVAL;





 mmc_send_bus_test(card, card->host, MMC_BUS_TEST_W, width);
 return mmc_send_bus_test(card, card->host, MMC_BUS_TEST_R, width);
}
