
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_qp {scalar_t__ blocked; int event; int generation; } ;


 int VMCI_SUCCESS ;
 int qp_lock (struct vmci_qp*) ;
 int qp_unlock (struct vmci_qp*) ;
 int wake_up (int *) ;

__attribute__((used)) static int qp_wakeup_cb(void *client_data)
{
 struct vmci_qp *qpair = (struct vmci_qp *)client_data;

 qp_lock(qpair);
 while (qpair->blocked > 0) {
  qpair->blocked--;
  qpair->generation++;
  wake_up(&qpair->event);
 }
 qp_unlock(qpair);

 return VMCI_SUCCESS;
}
