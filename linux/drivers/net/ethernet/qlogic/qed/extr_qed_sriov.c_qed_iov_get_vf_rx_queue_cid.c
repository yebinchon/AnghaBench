
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_vf_queue {TYPE_1__* cids; } ;
struct qed_queue_cid {int dummy; } ;
struct TYPE_2__ {struct qed_queue_cid* p_cid; int b_is_tx; } ;


 int MAX_QUEUES_PER_QZONE ;

__attribute__((used)) static struct qed_queue_cid *
qed_iov_get_vf_rx_queue_cid(struct qed_vf_queue *p_queue)
{
 int i;

 for (i = 0; i < MAX_QUEUES_PER_QZONE; i++) {
  if (p_queue->cids[i].p_cid && !p_queue->cids[i].b_is_tx)
   return p_queue->cids[i].p_cid;
 }

 return ((void*)0);
}
