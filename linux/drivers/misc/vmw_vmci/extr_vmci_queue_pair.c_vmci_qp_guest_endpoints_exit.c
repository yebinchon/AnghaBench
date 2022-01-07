
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qp_guest_endpoint {int dummy; } ;
struct qp_entry {int flags; scalar_t__ ref_count; int handle; } ;
struct TYPE_4__ {int mutex; } ;


 int VMCI_QPFLAG_LOCAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qp_detatch_hypercall (int ) ;
 int qp_guest_endpoint_destroy (struct qp_guest_endpoint*) ;
 TYPE_1__ qp_guest_endpoints ;
 struct qp_entry* qp_list_get_head (TYPE_1__*) ;
 int qp_list_remove_entry (TYPE_1__*,struct qp_entry*) ;

void vmci_qp_guest_endpoints_exit(void)
{
 struct qp_entry *entry;
 struct qp_guest_endpoint *ep;

 mutex_lock(&qp_guest_endpoints.mutex);

 while ((entry = qp_list_get_head(&qp_guest_endpoints))) {
  ep = (struct qp_guest_endpoint *)entry;


  if (!(entry->flags & VMCI_QPFLAG_LOCAL))
   qp_detatch_hypercall(entry->handle);


  entry->ref_count = 0;
  qp_list_remove_entry(&qp_guest_endpoints, entry);

  qp_guest_endpoint_destroy(ep);
 }

 mutex_unlock(&qp_guest_endpoints.mutex);
}
