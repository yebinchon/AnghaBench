
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int sw_prod_idx; int ** kcq; } ;
struct TYPE_4__ {int * gen; } ;
struct cnic_local {int cnic_irq_task; TYPE_1__ kcq1; TYPE_2__ status_blk; } ;
struct cnic_dev {int flags; struct cnic_local* cnic_priv; } ;


 int CNIC_F_CNIC_UP ;
 size_t KCQ_IDX (int) ;
 size_t KCQ_PG (int) ;
 int MAX_KCQ_IDX ;
 scalar_t__ likely (int ) ;
 int prefetch (int *) ;
 int tasklet_schedule (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void cnic_doirq(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;

 if (likely(test_bit(CNIC_F_CNIC_UP, &dev->flags))) {
  u16 prod = cp->kcq1.sw_prod_idx & MAX_KCQ_IDX;

  prefetch(cp->status_blk.gen);
  prefetch(&cp->kcq1.kcq[KCQ_PG(prod)][KCQ_IDX(prod)]);

  tasklet_schedule(&cp->cnic_irq_task);
 }
}
