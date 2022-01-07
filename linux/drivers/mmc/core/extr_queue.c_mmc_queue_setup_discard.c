
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int discard_granularity; } ;
struct request_queue {TYPE_1__ limits; } ;
struct mmc_card {int pref_erase; } ;


 int QUEUE_FLAG_DISCARD ;
 int QUEUE_FLAG_SECERASE ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int blk_queue_max_discard_sectors (struct request_queue*,unsigned int) ;
 unsigned int mmc_calc_max_discard (struct mmc_card*) ;
 scalar_t__ mmc_can_secure_erase_trim (struct mmc_card*) ;

__attribute__((used)) static void mmc_queue_setup_discard(struct request_queue *q,
        struct mmc_card *card)
{
 unsigned max_discard;

 max_discard = mmc_calc_max_discard(card);
 if (!max_discard)
  return;

 blk_queue_flag_set(QUEUE_FLAG_DISCARD, q);
 blk_queue_max_discard_sectors(q, max_discard);
 q->limits.discard_granularity = card->pref_erase << 9;

 if (card->pref_erase > max_discard)
  q->limits.discard_granularity = 0;
 if (mmc_can_secure_erase_trim(card))
  blk_queue_flag_set(QUEUE_FLAG_SECERASE, q);
}
