
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sge_rspq {int lock; } ;
struct port_info {int first_qset; int nqsets; } ;
struct TYPE_4__ {TYPE_1__* qs; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {struct sge_rspq rspq; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void t3_synchronize_rx(struct adapter *adap, const struct port_info *p)
{
 int i;

 for (i = p->first_qset; i < p->first_qset + p->nqsets; i++) {
  struct sge_rspq *q = &adap->sge.qs[i].rspq;

  spin_lock_irq(&q->lock);
  spin_unlock_irq(&q->lock);
 }
}
