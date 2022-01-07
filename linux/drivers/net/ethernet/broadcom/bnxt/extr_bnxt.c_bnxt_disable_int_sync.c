
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt {int cp_nr_rings; TYPE_1__* irq_tbl; int intr_sem; } ;
struct TYPE_2__ {int vector; } ;


 int atomic_inc (int *) ;
 int bnxt_cp_num_to_irq_num (struct bnxt*,int) ;
 int bnxt_disable_int (struct bnxt*) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void bnxt_disable_int_sync(struct bnxt *bp)
{
 int i;

 atomic_inc(&bp->intr_sem);

 bnxt_disable_int(bp);
 for (i = 0; i < bp->cp_nr_rings; i++) {
  int map_idx = bnxt_cp_num_to_irq_num(bp, i);

  synchronize_irq(bp->irq_tbl[map_idx].vector);
 }
}
