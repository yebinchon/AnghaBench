
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_card {int nr_parts; TYPE_1__* part; } ;
struct mmc_blk_data {int dummy; } ;
struct TYPE_2__ {int area_type; int size; int name; int force_ro; int part_cfg; } ;


 int MMC_BLK_DATA_AREA_RPMB ;
 int mmc_blk_alloc_part (struct mmc_card*,struct mmc_blk_data*,int ,int,int ,int ,int) ;
 int mmc_blk_alloc_rpmb_part (struct mmc_card*,struct mmc_blk_data*,int ,int,int ) ;
 int mmc_card_mmc (struct mmc_card*) ;

__attribute__((used)) static int mmc_blk_alloc_parts(struct mmc_card *card, struct mmc_blk_data *md)
{
 int idx, ret;

 if (!mmc_card_mmc(card))
  return 0;

 for (idx = 0; idx < card->nr_parts; idx++) {
  if (card->part[idx].area_type & MMC_BLK_DATA_AREA_RPMB) {






   ret = mmc_blk_alloc_rpmb_part(card, md,
    card->part[idx].part_cfg,
    card->part[idx].size >> 9,
    card->part[idx].name);
   if (ret)
    return ret;
  } else if (card->part[idx].size) {
   ret = mmc_blk_alloc_part(card, md,
    card->part[idx].part_cfg,
    card->part[idx].size >> 9,
    card->part[idx].force_ro,
    card->part[idx].name,
    card->part[idx].area_type);
   if (ret)
    return ret;
  }
 }

 return 0;
}
