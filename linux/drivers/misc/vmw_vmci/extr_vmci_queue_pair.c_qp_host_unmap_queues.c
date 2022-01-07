
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmci_queue {int * q_header; } ;


 int VMCI_SUCCESS ;
 int vunmap (int *) ;

__attribute__((used)) static int qp_host_unmap_queues(u32 gid,
    struct vmci_queue *produce_q,
    struct vmci_queue *consume_q)
{
 if (produce_q->q_header) {
  if (produce_q->q_header < consume_q->q_header)
   vunmap(produce_q->q_header);
  else
   vunmap(consume_q->q_header);

  produce_q->q_header = ((void*)0);
  consume_q->q_header = ((void*)0);
 }

 return VMCI_SUCCESS;
}
