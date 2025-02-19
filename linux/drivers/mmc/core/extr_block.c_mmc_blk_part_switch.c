
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct TYPE_2__ {unsigned int part_config; int part_time; } ;
struct mmc_card {TYPE_1__ ext_csd; int dev; } ;
struct mmc_blk_data {unsigned int part_curr; } ;


 int EXT_CSD_CMD_SET_NORMAL ;
 int EXT_CSD_PART_CONFIG ;
 unsigned int EXT_CSD_PART_CONFIG_ACC_MASK ;
 struct mmc_blk_data* dev_get_drvdata (int *) ;
 int mmc_blk_part_switch_post (struct mmc_card*,unsigned int) ;
 int mmc_blk_part_switch_pre (struct mmc_card*,unsigned int) ;
 scalar_t__ mmc_card_mmc (struct mmc_card*) ;
 int mmc_switch (struct mmc_card*,int ,int ,unsigned int,int ) ;

__attribute__((used)) static inline int mmc_blk_part_switch(struct mmc_card *card,
          unsigned int part_type)
{
 int ret = 0;
 struct mmc_blk_data *main_md = dev_get_drvdata(&card->dev);

 if (main_md->part_curr == part_type)
  return 0;

 if (mmc_card_mmc(card)) {
  u8 part_config = card->ext_csd.part_config;

  ret = mmc_blk_part_switch_pre(card, part_type);
  if (ret)
   return ret;

  part_config &= ~EXT_CSD_PART_CONFIG_ACC_MASK;
  part_config |= part_type;

  ret = mmc_switch(card, EXT_CSD_CMD_SET_NORMAL,
     EXT_CSD_PART_CONFIG, part_config,
     card->ext_csd.part_time);
  if (ret) {
   mmc_blk_part_switch_post(card, part_type);
   return ret;
  }

  card->ext_csd.part_config = part_config;

  ret = mmc_blk_part_switch_post(card, main_md->part_curr);
 }

 main_md->part_curr = part_type;
 return ret;
}
