
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic_queue {TYPE_1__* head; } ;
typedef int ionic_desc_cb ;
struct TYPE_2__ {int desc; } ;


 int DEBUG_STATS_TXQ_POST (int ,int ,int) ;
 int ionic_q_post (struct ionic_queue*,int,int ,void*) ;
 int q_to_qcq (struct ionic_queue*) ;

__attribute__((used)) static inline void ionic_txq_post(struct ionic_queue *q, bool ring_dbell,
      ionic_desc_cb cb_func, void *cb_arg)
{
 DEBUG_STATS_TXQ_POST(q_to_qcq(q), q->head->desc, ring_dbell);

 ionic_q_post(q, ring_dbell, cb_func, cb_arg);
}
