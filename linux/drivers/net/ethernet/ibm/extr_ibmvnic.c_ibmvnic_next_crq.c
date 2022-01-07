
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int first; } ;
union ibmvnic_crq {TYPE_1__ generic; } ;
struct ibmvnic_crq_queue {size_t cur; size_t size; union ibmvnic_crq* msgs; } ;
struct ibmvnic_adapter {struct ibmvnic_crq_queue crq; } ;


 int IBMVNIC_CRQ_CMD_RSP ;

__attribute__((used)) static union ibmvnic_crq *ibmvnic_next_crq(struct ibmvnic_adapter *adapter)
{
 struct ibmvnic_crq_queue *queue = &adapter->crq;
 union ibmvnic_crq *crq;

 crq = &queue->msgs[queue->cur];
 if (crq->generic.first & IBMVNIC_CRQ_CMD_RSP) {
  if (++queue->cur == queue->size)
   queue->cur = 0;
 } else {
  crq = ((void*)0);
 }

 return crq;
}
