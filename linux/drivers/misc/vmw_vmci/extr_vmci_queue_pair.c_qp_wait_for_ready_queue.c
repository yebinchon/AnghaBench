
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_qp {unsigned int generation; int event; int blocked; } ;


 int qp_lock (struct vmci_qp*) ;
 int qp_unlock (struct vmci_qp*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static bool qp_wait_for_ready_queue(struct vmci_qp *qpair)
{
 unsigned int generation;

 qpair->blocked++;
 generation = qpair->generation;
 qp_unlock(qpair);
 wait_event(qpair->event, generation != qpair->generation);
 qp_lock(qpair);

 return 1;
}
