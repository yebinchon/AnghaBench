
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cpu_rmap {int dummy; } ;
struct bnxt_irq {int vector; int requested; int have_cpumask; int cpu_mask; int name; int handler; } ;
struct bnxt {int flags; int cp_nr_rings; TYPE_3__* dev; TYPE_1__* pdev; TYPE_2__** bnapi; struct bnxt_irq* irq_tbl; } ;
struct TYPE_7__ {struct cpu_rmap* rx_cpu_rmap; } ;
struct TYPE_6__ {scalar_t__ rx_ring; } ;
struct TYPE_5__ {int dev; } ;


 int BNXT_FLAG_USING_MSIX ;
 int GFP_KERNEL ;
 unsigned long IRQF_SHARED ;
 int bnxt_cp_num_to_irq_num (struct bnxt*,int) ;
 int bnxt_setup_int_mode (struct bnxt*) ;
 int cpumask_local_spread (int,int) ;
 int cpumask_set_cpu (int ,int ) ;
 int dev_to_node (int *) ;
 int irq_cpu_rmap_add (struct cpu_rmap*,int) ;
 int irq_set_affinity_hint (int,int ) ;
 int netdev_err (TYPE_3__*,char*,int) ;
 int netdev_warn (TYPE_3__*,char*,int) ;
 int request_irq (int,int ,unsigned long,int ,TYPE_2__*) ;
 scalar_t__ zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static int bnxt_request_irq(struct bnxt *bp)
{
 int i, j, rc = 0;
 unsigned long flags = 0;




 rc = bnxt_setup_int_mode(bp);
 if (rc) {
  netdev_err(bp->dev, "bnxt_setup_int_mode err: %x\n",
      rc);
  return rc;
 }



 if (!(bp->flags & BNXT_FLAG_USING_MSIX))
  flags = IRQF_SHARED;

 for (i = 0, j = 0; i < bp->cp_nr_rings; i++) {
  int map_idx = bnxt_cp_num_to_irq_num(bp, i);
  struct bnxt_irq *irq = &bp->irq_tbl[map_idx];
  rc = request_irq(irq->vector, irq->handler, flags, irq->name,
     bp->bnapi[i]);
  if (rc)
   break;

  irq->requested = 1;

  if (zalloc_cpumask_var(&irq->cpu_mask, GFP_KERNEL)) {
   int numa_node = dev_to_node(&bp->pdev->dev);

   irq->have_cpumask = 1;
   cpumask_set_cpu(cpumask_local_spread(i, numa_node),
     irq->cpu_mask);
   rc = irq_set_affinity_hint(irq->vector, irq->cpu_mask);
   if (rc) {
    netdev_warn(bp->dev,
         "Set affinity failed, IRQ = %d\n",
         irq->vector);
    break;
   }
  }
 }
 return rc;
}
