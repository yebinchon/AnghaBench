
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int consume_size; int produce_size; } ;
struct qp_guest_endpoint {int resource; TYPE_1__ qp; int consume_q; int produce_q; int ppn_set; } ;


 int kfree (struct qp_guest_endpoint*) ;
 int qp_cleanup_queue_mutex (int ,int ) ;
 int qp_free_ppn_set (int *) ;
 int qp_free_queue (int ,int ) ;
 int vmci_resource_remove (int *) ;

__attribute__((used)) static void qp_guest_endpoint_destroy(struct qp_guest_endpoint *entry)
{
 qp_free_ppn_set(&entry->ppn_set);
 qp_cleanup_queue_mutex(entry->produce_q, entry->consume_q);
 qp_free_queue(entry->produce_q, entry->qp.produce_size);
 qp_free_queue(entry->consume_q, entry->qp.consume_size);

 vmci_resource_remove(&entry->resource);

 kfree(entry);
}
