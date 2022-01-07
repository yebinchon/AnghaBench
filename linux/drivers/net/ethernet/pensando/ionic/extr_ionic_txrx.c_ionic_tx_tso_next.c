
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic_txq_sg_elem {int dummy; } ;
struct ionic_txq_sg_desc {struct ionic_txq_sg_elem* elems; } ;
struct ionic_txq_desc {int dummy; } ;
struct ionic_queue {TYPE_1__* head; } ;
struct TYPE_2__ {struct ionic_txq_desc* desc; struct ionic_txq_sg_desc* sg_desc; } ;



__attribute__((used)) static struct ionic_txq_desc *ionic_tx_tso_next(struct ionic_queue *q,
      struct ionic_txq_sg_elem **elem)
{
 struct ionic_txq_sg_desc *sg_desc = q->head->sg_desc;
 struct ionic_txq_desc *desc = q->head->desc;

 *elem = sg_desc->elems;
 return desc;
}
