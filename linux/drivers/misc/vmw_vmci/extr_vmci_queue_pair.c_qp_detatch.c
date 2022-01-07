
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_handle {int dummy; } ;


 int VMCI_ERROR_INVALID_ARGS ;
 int qp_detatch_guest_work (struct vmci_handle) ;
 int qp_detatch_host_work (struct vmci_handle) ;
 scalar_t__ vmci_handle_is_invalid (struct vmci_handle) ;

__attribute__((used)) static int qp_detatch(struct vmci_handle handle, bool guest_endpoint)
{
 if (vmci_handle_is_invalid(handle))
  return VMCI_ERROR_INVALID_ARGS;

 if (guest_endpoint)
  return qp_detatch_guest_work(handle);
 else
  return qp_detatch_host_work(handle);
}
