
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmdq_en; } ;
struct mmc_card {TYPE_1__ ext_csd; scalar_t__ reenable_cmdq; int host; } ;


 unsigned int EXT_CSD_PART_CONFIG_ACC_RPMB ;
 int mmc_cmdq_enable (struct mmc_card*) ;
 int mmc_retune_unpause (int ) ;

__attribute__((used)) static int mmc_blk_part_switch_post(struct mmc_card *card,
        unsigned int part_type)
{
 int ret = 0;

 if (part_type == EXT_CSD_PART_CONFIG_ACC_RPMB) {
  mmc_retune_unpause(card->host);
  if (card->reenable_cmdq && !card->ext_csd.cmdq_en)
   ret = mmc_cmdq_enable(card);
 }

 return ret;
}
