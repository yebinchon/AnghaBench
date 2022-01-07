
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_qp {int produce_q; } ;


 int qp_acquire_queue_mutex (int ) ;

__attribute__((used)) static void qp_lock(const struct vmci_qp *qpair)
{
 qp_acquire_queue_mutex(qpair->produce_q);
}
