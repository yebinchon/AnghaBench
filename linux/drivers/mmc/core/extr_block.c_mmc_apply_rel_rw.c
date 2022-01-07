
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_4__ {int rel_param; int rel_sectors; } ;
struct mmc_card {TYPE_2__ ext_csd; } ;
struct TYPE_3__ {int blocks; } ;
struct mmc_blk_request {TYPE_1__ data; } ;


 int EXT_CSD_WR_REL_PARAM_EN ;
 int IS_ALIGNED (int ,int) ;
 int blk_rq_pos (struct request*) ;

__attribute__((used)) static inline void mmc_apply_rel_rw(struct mmc_blk_request *brq,
        struct mmc_card *card,
        struct request *req)
{
 if (!(card->ext_csd.rel_param & EXT_CSD_WR_REL_PARAM_EN)) {

  if (!IS_ALIGNED(blk_rq_pos(req), card->ext_csd.rel_sectors))
   brq->data.blocks = 1;

  if (brq->data.blocks > card->ext_csd.rel_sectors)
   brq->data.blocks = card->ext_csd.rel_sectors;
  else if (brq->data.blocks < card->ext_csd.rel_sectors)
   brq->data.blocks = 1;
 }
}
