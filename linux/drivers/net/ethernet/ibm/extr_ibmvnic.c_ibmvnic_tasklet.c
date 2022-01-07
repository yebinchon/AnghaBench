
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ first; } ;
union ibmvnic_crq {TYPE_1__ generic; } ;
struct ibmvnic_crq_queue {int lock; } ;
struct ibmvnic_adapter {int wait_capability; int running_cap_crqs; struct ibmvnic_crq_queue crq; } ;


 scalar_t__ atomic_read (int *) ;
 int ibmvnic_handle_crq (union ibmvnic_crq*,struct ibmvnic_adapter*) ;
 union ibmvnic_crq* ibmvnic_next_crq (struct ibmvnic_adapter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ibmvnic_tasklet(void *data)
{
 struct ibmvnic_adapter *adapter = data;
 struct ibmvnic_crq_queue *queue = &adapter->crq;
 union ibmvnic_crq *crq;
 unsigned long flags;
 bool done = 0;

 spin_lock_irqsave(&queue->lock, flags);
 while (!done) {

  while ((crq = ibmvnic_next_crq(adapter)) != ((void*)0)) {
   ibmvnic_handle_crq(crq, adapter);
   crq->generic.first = 0;
  }




  if (!adapter->wait_capability)
   done = 1;
 }



 if (atomic_read(&adapter->running_cap_crqs) != 0)
  adapter->wait_capability = 1;
 spin_unlock_irqrestore(&queue->lock, flags);
}
