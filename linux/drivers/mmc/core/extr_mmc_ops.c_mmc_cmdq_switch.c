
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int cmdq_en; int generic_cmd6_time; int cmdq_support; } ;
struct mmc_card {TYPE_1__ ext_csd; } ;


 int EOPNOTSUPP ;
 int EXT_CSD_CMDQ_MODE_EN ;
 int EXT_CSD_CMDQ_MODE_ENABLED ;
 int EXT_CSD_CMD_SET_NORMAL ;
 int mmc_switch (struct mmc_card*,int ,int ,int ,int ) ;

__attribute__((used)) static int mmc_cmdq_switch(struct mmc_card *card, bool enable)
{
 u8 val = enable ? EXT_CSD_CMDQ_MODE_ENABLED : 0;
 int err;

 if (!card->ext_csd.cmdq_support)
  return -EOPNOTSUPP;

 err = mmc_switch(card, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_CMDQ_MODE_EN,
    val, card->ext_csd.generic_cmd6_time);
 if (!err)
  card->ext_csd.cmdq_en = enable;

 return err;
}
