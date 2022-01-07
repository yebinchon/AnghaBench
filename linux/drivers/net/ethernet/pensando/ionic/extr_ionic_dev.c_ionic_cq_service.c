
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ionic_cq {int done_color; TYPE_1__* tail; } ;
typedef int (* ionic_cq_done_cb ) (void*) ;
typedef scalar_t__ (* ionic_cq_cb ) (struct ionic_cq*,TYPE_1__*) ;
struct TYPE_3__ {struct TYPE_3__* next; scalar_t__ last; } ;


 int DEBUG_STATS_CQE_CNT (struct ionic_cq*) ;

unsigned int ionic_cq_service(struct ionic_cq *cq, unsigned int work_to_do,
         ionic_cq_cb cb, ionic_cq_done_cb done_cb,
         void *done_arg)
{
 unsigned int work_done = 0;

 if (work_to_do == 0)
  return 0;

 while (cb(cq, cq->tail)) {
  if (cq->tail->last)
   cq->done_color = !cq->done_color;
  cq->tail = cq->tail->next;
  DEBUG_STATS_CQE_CNT(cq);

  if (++work_done >= work_to_do)
   break;
 }

 if (work_done && done_cb)
  done_cb(done_arg);

 return work_done;
}
