
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmdq_en; } ;
struct mmc_card {int host; TYPE_1__ ext_csd; } ;


 unsigned int EXT_CSD_PART_CONFIG_ACC_RPMB ;
 int mmc_cmdq_disable (struct mmc_card*) ;
 int mmc_retune_pause (int ) ;

__attribute__((used)) static int mmc_blk_part_switch_pre(struct mmc_card *card,
       unsigned int part_type)
{
 int ret = 0;

 if (part_type == EXT_CSD_PART_CONFIG_ACC_RPMB) {
  if (card->ext_csd.cmdq_en) {
   ret = mmc_cmdq_disable(card);
   if (ret)
    return ret;
  }
  mmc_retune_pause(card->host);
 }

 return ret;
}
