
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnxt_irq {int dummy; } ;
struct bnxt {int total_irqs; int rx_nr_rings; int tx_nr_rings; int cp_nr_rings; TYPE_1__* pdev; TYPE_2__* irq_tbl; int flags; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_3__ {int irq; } ;


 int BNXT_FLAG_SHARED_RINGS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* kcalloc (int,int,int ) ;

__attribute__((used)) static int bnxt_init_inta(struct bnxt *bp)
{
 bp->irq_tbl = kcalloc(1, sizeof(struct bnxt_irq), GFP_KERNEL);
 if (!bp->irq_tbl)
  return -ENOMEM;

 bp->total_irqs = 1;
 bp->rx_nr_rings = 1;
 bp->tx_nr_rings = 1;
 bp->cp_nr_rings = 1;
 bp->flags |= BNXT_FLAG_SHARED_RINGS;
 bp->irq_tbl[0].vector = bp->pdev->irq;
 return 0;
}
