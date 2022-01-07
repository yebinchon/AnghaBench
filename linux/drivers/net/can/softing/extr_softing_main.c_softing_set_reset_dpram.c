
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct softing {int spin; int * dpram; TYPE_1__* pdat; } ;
struct TYPE_2__ {int generation; } ;


 size_t DPRAM_V2_RESET ;
 int ioread8 (int *) ;
 int iowrite8 (int,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void softing_set_reset_dpram(struct softing *card)
{
 if (card->pdat->generation >= 2) {
  spin_lock_bh(&card->spin);
  iowrite8(ioread8(&card->dpram[DPRAM_V2_RESET]) & ~1,
    &card->dpram[DPRAM_V2_RESET]);
  spin_unlock_bh(&card->spin);
 }
}
