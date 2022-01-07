
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmci_queue_header {int dummy; } ;
struct vmci_qp {TYPE_2__* consume_q; TYPE_1__* produce_q; } ;
struct TYPE_4__ {struct vmci_queue_header* saved_header; struct vmci_queue_header* q_header; } ;
struct TYPE_3__ {struct vmci_queue_header* saved_header; struct vmci_queue_header* q_header; } ;


 int VMCI_SUCCESS ;
 int qp_map_queue_headers (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int qp_get_queue_headers(const struct vmci_qp *qpair,
    struct vmci_queue_header **produce_q_header,
    struct vmci_queue_header **consume_q_header)
{
 int result;

 result = qp_map_queue_headers(qpair->produce_q, qpair->consume_q);
 if (result == VMCI_SUCCESS) {
  *produce_q_header = qpair->produce_q->q_header;
  *consume_q_header = qpair->consume_q->q_header;
 } else if (qpair->produce_q->saved_header &&
     qpair->consume_q->saved_header) {
  *produce_q_header = qpair->produce_q->saved_header;
  *consume_q_header = qpair->consume_q->saved_header;
  result = VMCI_SUCCESS;
 }

 return result;
}
