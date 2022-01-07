
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ionic_cq {int done_color; TYPE_1__* tail; } ;
struct TYPE_2__ {struct TYPE_2__* next; scalar_t__ last; } ;


 int DEBUG_STATS_CQE_CNT (struct ionic_cq*) ;
 scalar_t__ ionic_rx_service (struct ionic_cq*,TYPE_1__*) ;

__attribute__((used)) static u32 ionic_rx_walk_cq(struct ionic_cq *rxcq, u32 limit)
{
 u32 work_done = 0;

 while (ionic_rx_service(rxcq, rxcq->tail)) {
  if (rxcq->tail->last)
   rxcq->done_color = !rxcq->done_color;
  rxcq->tail = rxcq->tail->next;
  DEBUG_STATS_CQE_CNT(rxcq);

  if (++work_done >= limit)
   break;
 }

 return work_done;
}
