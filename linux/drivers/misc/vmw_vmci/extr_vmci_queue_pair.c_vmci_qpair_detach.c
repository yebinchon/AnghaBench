
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_qp {int peer; int handle; int guest_endpoint; } ;


 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_INVALID_HANDLE ;
 int VMCI_INVALID_ID ;
 int kfree (struct vmci_qp*) ;
 int memset (struct vmci_qp*,int ,int) ;
 int qp_detatch (int ,int ) ;

int vmci_qpair_detach(struct vmci_qp **qpair)
{
 int result;
 struct vmci_qp *old_qpair;

 if (!qpair || !(*qpair))
  return VMCI_ERROR_INVALID_ARGS;

 old_qpair = *qpair;
 result = qp_detatch(old_qpair->handle, old_qpair->guest_endpoint);
 memset(old_qpair, 0, sizeof(*old_qpair));
 old_qpair->handle = VMCI_INVALID_HANDLE;
 old_qpair->peer = VMCI_INVALID_ID;
 kfree(old_qpair);
 *qpair = ((void*)0);

 return result;
}
