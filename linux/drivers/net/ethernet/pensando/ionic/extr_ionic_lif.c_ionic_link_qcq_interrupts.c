
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int index; int vector; } ;
struct TYPE_3__ {int lif; } ;
struct ionic_qcq {int flags; TYPE_2__ intr; TYPE_1__ cq; } ;


 int IONIC_QCQ_F_INTR ;
 scalar_t__ WARN_ON (int) ;
 int ionic_intr_free (int ,int ) ;

__attribute__((used)) static void ionic_link_qcq_interrupts(struct ionic_qcq *src_qcq,
          struct ionic_qcq *n_qcq)
{
 if (WARN_ON(n_qcq->flags & IONIC_QCQ_F_INTR)) {
  ionic_intr_free(n_qcq->cq.lif, n_qcq->intr.index);
  n_qcq->flags &= ~IONIC_QCQ_F_INTR;
 }

 n_qcq->intr.vector = src_qcq->intr.vector;
 n_qcq->intr.index = src_qcq->intr.index;
}
