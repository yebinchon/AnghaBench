
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_qp {int produce_q_size; int consume_q; int produce_q; } ;
struct msghdr {int msg_iter; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ VMCI_ERROR_INVALID_ARGS ;
 scalar_t__ VMCI_ERROR_QUEUEPAIR_NOT_READY ;
 scalar_t__ VMCI_ERROR_WOULD_BLOCK ;
 scalar_t__ qp_enqueue_locked (int ,int ,int ,int *) ;
 int qp_lock (struct vmci_qp*) ;
 int qp_unlock (struct vmci_qp*) ;
 int qp_wait_for_ready_queue (struct vmci_qp*) ;

ssize_t vmci_qpair_enquev(struct vmci_qp *qpair,
     struct msghdr *msg,
     size_t iov_size,
     int buf_type)
{
 ssize_t result;

 if (!qpair)
  return VMCI_ERROR_INVALID_ARGS;

 qp_lock(qpair);

 do {
  result = qp_enqueue_locked(qpair->produce_q,
        qpair->consume_q,
        qpair->produce_q_size,
        &msg->msg_iter);

  if (result == VMCI_ERROR_QUEUEPAIR_NOT_READY &&
      !qp_wait_for_ready_queue(qpair))
   result = VMCI_ERROR_WOULD_BLOCK;

 } while (result == VMCI_ERROR_QUEUEPAIR_NOT_READY);

 qp_unlock(qpair);

 return result;
}
