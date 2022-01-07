
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vmci_handle {int dummy; } ;
struct vmci_ctx {int lock; int doorbell_array; } ;


 int VMCI_ERROR_DUPLICATE_ENTRY ;
 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_NOT_FOUND ;
 scalar_t__ VMCI_INVALID_ID ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vmci_ctx* vmci_ctx_get (scalar_t__) ;
 int vmci_ctx_put (struct vmci_ctx*) ;
 int vmci_handle_arr_append_entry (int *,struct vmci_handle) ;
 int vmci_handle_arr_has_entry (int ,struct vmci_handle) ;
 scalar_t__ vmci_handle_is_invalid (struct vmci_handle) ;

int vmci_ctx_dbell_create(u32 context_id, struct vmci_handle handle)
{
 struct vmci_ctx *context;
 int result;

 if (context_id == VMCI_INVALID_ID || vmci_handle_is_invalid(handle))
  return VMCI_ERROR_INVALID_ARGS;

 context = vmci_ctx_get(context_id);
 if (context == ((void*)0))
  return VMCI_ERROR_NOT_FOUND;

 spin_lock(&context->lock);
 if (!vmci_handle_arr_has_entry(context->doorbell_array, handle))
  result = vmci_handle_arr_append_entry(&context->doorbell_array,
            handle);
 else
  result = VMCI_ERROR_DUPLICATE_ENTRY;

 spin_unlock(&context->lock);
 vmci_ctx_put(context);

 return result;
}
