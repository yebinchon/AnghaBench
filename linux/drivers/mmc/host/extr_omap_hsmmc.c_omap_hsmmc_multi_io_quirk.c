
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int dummy; } ;


 unsigned int MMC_DATA_READ ;

__attribute__((used)) static int omap_hsmmc_multi_io_quirk(struct mmc_card *card,
         unsigned int direction, int blk_size)
{

 if (direction == MMC_DATA_READ)
  return 1;

 return blk_size;
}
