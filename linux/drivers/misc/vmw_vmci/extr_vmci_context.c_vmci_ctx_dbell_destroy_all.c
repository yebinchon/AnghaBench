
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vmci_handle_arr {int dummy; } ;
struct vmci_handle {int dummy; } ;
struct vmci_ctx {int lock; struct vmci_handle_arr* pending_doorbell_array; struct vmci_handle_arr* doorbell_array; } ;


 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_NOT_FOUND ;
 scalar_t__ VMCI_INVALID_ID ;
 int VMCI_SUCCESS ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vmci_ctx* vmci_ctx_get (scalar_t__) ;
 int vmci_ctx_put (struct vmci_ctx*) ;
 struct vmci_handle vmci_handle_arr_remove_tail (struct vmci_handle_arr*) ;
 int vmci_handle_is_invalid (struct vmci_handle) ;

int vmci_ctx_dbell_destroy_all(u32 context_id)
{
 struct vmci_ctx *context;
 struct vmci_handle handle;

 if (context_id == VMCI_INVALID_ID)
  return VMCI_ERROR_INVALID_ARGS;

 context = vmci_ctx_get(context_id);
 if (context == ((void*)0))
  return VMCI_ERROR_NOT_FOUND;

 spin_lock(&context->lock);
 do {
  struct vmci_handle_arr *arr = context->doorbell_array;
  handle = vmci_handle_arr_remove_tail(arr);
 } while (!vmci_handle_is_invalid(handle));
 do {
  struct vmci_handle_arr *arr = context->pending_doorbell_array;
  handle = vmci_handle_arr_remove_tail(arr);
 } while (!vmci_handle_is_invalid(handle));
 spin_unlock(&context->lock);

 vmci_ctx_put(context);

 return VMCI_SUCCESS;
}
