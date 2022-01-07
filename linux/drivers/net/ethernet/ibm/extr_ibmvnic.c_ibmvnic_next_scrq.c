
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int first; } ;
union sub_crq {TYPE_1__ generic; } ;
struct ibmvnic_sub_crq_queue {size_t cur; size_t size; int lock; union sub_crq* msgs; } ;
struct ibmvnic_adapter {int dummy; } ;


 int IBMVNIC_CRQ_CMD_RSP ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static union sub_crq *ibmvnic_next_scrq(struct ibmvnic_adapter *adapter,
     struct ibmvnic_sub_crq_queue *scrq)
{
 union sub_crq *entry;
 unsigned long flags;

 spin_lock_irqsave(&scrq->lock, flags);
 entry = &scrq->msgs[scrq->cur];
 if (entry->generic.first & IBMVNIC_CRQ_CMD_RSP) {
  if (++scrq->cur == scrq->size)
   scrq->cur = 0;
 } else {
  entry = ((void*)0);
 }
 spin_unlock_irqrestore(&scrq->lock, flags);

 return entry;
}
