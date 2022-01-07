
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_irq {scalar_t__ requested; int vector; scalar_t__ have_cpumask; int cpu_mask; } ;
struct bnxt {int cp_nr_rings; int * bnapi; struct bnxt_irq* irq_tbl; TYPE_1__* dev; } ;
struct TYPE_2__ {int * rx_cpu_rmap; } ;


 int bnxt_cp_num_to_irq_num (struct bnxt*,int) ;
 int free_cpumask_var (int ) ;
 int free_irq (int ,int ) ;
 int free_irq_cpu_rmap (int *) ;
 int irq_set_affinity_hint (int ,int *) ;

__attribute__((used)) static void bnxt_free_irq(struct bnxt *bp)
{
 struct bnxt_irq *irq;
 int i;





 if (!bp->irq_tbl || !bp->bnapi)
  return;

 for (i = 0; i < bp->cp_nr_rings; i++) {
  int map_idx = bnxt_cp_num_to_irq_num(bp, i);

  irq = &bp->irq_tbl[map_idx];
  if (irq->requested) {
   if (irq->have_cpumask) {
    irq_set_affinity_hint(irq->vector, ((void*)0));
    free_cpumask_var(irq->cpu_mask);
    irq->have_cpumask = 0;
   }
   free_irq(irq->vector, bp->bnapi[i]);
  }

  irq->requested = 0;
 }
}
