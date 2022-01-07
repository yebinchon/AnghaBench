
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_qp {int produce_q_size; int consume_q; int produce_q; } ;
struct kvec {void* iov_base; size_t iov_len; } ;
struct iov_iter {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ VMCI_ERROR_INVALID_ARGS ;
 scalar_t__ VMCI_ERROR_QUEUEPAIR_NOT_READY ;
 scalar_t__ VMCI_ERROR_WOULD_BLOCK ;
 int WRITE ;
 int iov_iter_kvec (struct iov_iter*,int ,struct kvec*,int,size_t) ;
 scalar_t__ qp_enqueue_locked (int ,int ,int ,struct iov_iter*) ;
 int qp_lock (struct vmci_qp*) ;
 int qp_unlock (struct vmci_qp*) ;
 int qp_wait_for_ready_queue (struct vmci_qp*) ;

ssize_t vmci_qpair_enqueue(struct vmci_qp *qpair,
      const void *buf,
      size_t buf_size,
      int buf_type)
{
 ssize_t result;
 struct iov_iter from;
 struct kvec v = {.iov_base = (void *)buf, .iov_len = buf_size};

 if (!qpair || !buf)
  return VMCI_ERROR_INVALID_ARGS;

 iov_iter_kvec(&from, WRITE, &v, 1, buf_size);

 qp_lock(qpair);

 do {
  result = qp_enqueue_locked(qpair->produce_q,
        qpair->consume_q,
        qpair->produce_q_size,
        &from);

  if (result == VMCI_ERROR_QUEUEPAIR_NOT_READY &&
      !qp_wait_for_ready_queue(qpair))
   result = VMCI_ERROR_WOULD_BLOCK;

 } while (result == VMCI_ERROR_QUEUEPAIR_NOT_READY);

 qp_unlock(qpair);

 return result;
}
