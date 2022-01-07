
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_handle {int dummy; } ;
struct vmci_ctx {int queue_pair_array; } ;


 int VMCI_ERROR_DUPLICATE_ENTRY ;
 int VMCI_ERROR_INVALID_ARGS ;
 int vmci_handle_arr_append_entry (int *,struct vmci_handle) ;
 int vmci_handle_arr_has_entry (int ,struct vmci_handle) ;
 scalar_t__ vmci_handle_is_invalid (struct vmci_handle) ;

int vmci_ctx_qp_create(struct vmci_ctx *context, struct vmci_handle handle)
{
 int result;

 if (context == ((void*)0) || vmci_handle_is_invalid(handle))
  return VMCI_ERROR_INVALID_ARGS;

 if (!vmci_handle_arr_has_entry(context->queue_pair_array, handle))
  result = vmci_handle_arr_append_entry(
   &context->queue_pair_array, handle);
 else
  result = VMCI_ERROR_DUPLICATE_ENTRY;

 return result;
}
