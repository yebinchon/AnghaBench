
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qp_broker_entry {int saved_consume_q; TYPE_2__* consume_q; int saved_produce_q; TYPE_1__* produce_q; } ;
struct TYPE_4__ {int * saved_header; int * q_header; } ;
struct TYPE_3__ {int * saved_header; int * q_header; } ;


 int VMCI_SUCCESS ;
 int memcpy (int *,int *,int) ;
 int qp_host_map_queues (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int qp_save_headers(struct qp_broker_entry *entry)
{
 int result;

 if (entry->produce_q->saved_header != ((void*)0) &&
     entry->consume_q->saved_header != ((void*)0)) {






  return VMCI_SUCCESS;
 }

 if (((void*)0) == entry->produce_q->q_header ||
     ((void*)0) == entry->consume_q->q_header) {
  result = qp_host_map_queues(entry->produce_q, entry->consume_q);
  if (result < VMCI_SUCCESS)
   return result;
 }

 memcpy(&entry->saved_produce_q, entry->produce_q->q_header,
        sizeof(entry->saved_produce_q));
 entry->produce_q->saved_header = &entry->saved_produce_q;
 memcpy(&entry->saved_consume_q, entry->consume_q->q_header,
        sizeof(entry->saved_consume_q));
 entry->consume_q->saved_header = &entry->saved_consume_q;

 return VMCI_SUCCESS;
}
