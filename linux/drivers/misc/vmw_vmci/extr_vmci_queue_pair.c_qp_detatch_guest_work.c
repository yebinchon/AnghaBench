
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vmci_handle {int dummy; } ;
struct TYPE_5__ {int flags; int ref_count; } ;
struct qp_guest_endpoint {TYPE_2__ qp; } ;
struct TYPE_4__ {int mutex; } ;


 int VMCI_ERROR_NOT_FOUND ;
 int VMCI_QPFLAG_LOCAL ;
 int VMCI_SUCCESS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qp_detatch_hypercall (struct vmci_handle) ;
 int qp_guest_endpoint_destroy (struct qp_guest_endpoint*) ;
 TYPE_1__ qp_guest_endpoints ;
 struct qp_guest_endpoint* qp_guest_handle_to_entry (struct vmci_handle) ;
 int qp_list_remove_entry (TYPE_1__*,TYPE_2__*) ;
 int qp_notify_peer_local (int,struct vmci_handle) ;

__attribute__((used)) static int qp_detatch_guest_work(struct vmci_handle handle)
{
 int result;
 struct qp_guest_endpoint *entry;
 u32 ref_count = ~0;

 mutex_lock(&qp_guest_endpoints.mutex);

 entry = qp_guest_handle_to_entry(handle);
 if (!entry) {
  mutex_unlock(&qp_guest_endpoints.mutex);
  return VMCI_ERROR_NOT_FOUND;
 }

 if (entry->qp.flags & VMCI_QPFLAG_LOCAL) {
  result = VMCI_SUCCESS;

  if (entry->qp.ref_count > 1) {
   result = qp_notify_peer_local(0, handle);






  }
 } else {
  result = qp_detatch_hypercall(handle);
  if (result < VMCI_SUCCESS) {
   mutex_unlock(&qp_guest_endpoints.mutex);
   return result;
  }
 }






 entry->qp.ref_count--;
 if (entry->qp.ref_count == 0)
  qp_list_remove_entry(&qp_guest_endpoints, &entry->qp);


 if (entry)
  ref_count = entry->qp.ref_count;

 mutex_unlock(&qp_guest_endpoints.mutex);

 if (ref_count == 0)
  qp_guest_endpoint_destroy(entry);

 return result;
}
