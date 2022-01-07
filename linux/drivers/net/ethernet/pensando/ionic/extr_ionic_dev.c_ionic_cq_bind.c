
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_queue {int dummy; } ;
struct ionic_cq {struct ionic_queue* bound_q; } ;



void ionic_cq_bind(struct ionic_cq *cq, struct ionic_queue *q)
{
 cq->bound_q = q;
}
