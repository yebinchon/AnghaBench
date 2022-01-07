
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmci_handle_arr {int dummy; } ;
struct vmci_handle {int dummy; } ;
struct vmci_ctx {int lock; struct vmci_handle_arr* pending_doorbell_array; } ;


 int ctx_clear_notify_call (struct vmci_ctx*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vmci_ctx* vmci_ctx_get (int ) ;
 int vmci_ctx_put (struct vmci_ctx*) ;
 int vmci_handle_arr_append_entry (struct vmci_handle_arr**,struct vmci_handle) ;
 int vmci_handle_arr_destroy (struct vmci_handle_arr*) ;
 int vmci_handle_arr_has_entry (struct vmci_handle_arr*,struct vmci_handle) ;
 struct vmci_handle vmci_handle_arr_remove_tail (struct vmci_handle_arr*) ;
 int vmci_handle_is_invalid (struct vmci_handle) ;

void vmci_ctx_rcv_notifications_release(u32 context_id,
     struct vmci_handle_arr *db_handle_array,
     struct vmci_handle_arr *qp_handle_array,
     bool success)
{
 struct vmci_ctx *context = vmci_ctx_get(context_id);

 spin_lock(&context->lock);
 if (!success) {
  struct vmci_handle handle;
  handle = vmci_handle_arr_remove_tail(
     context->pending_doorbell_array);
  while (!vmci_handle_is_invalid(handle)) {
   if (!vmci_handle_arr_has_entry(db_handle_array,
             handle)) {
    vmci_handle_arr_append_entry(
      &db_handle_array, handle);
   }
   handle = vmci_handle_arr_remove_tail(
     context->pending_doorbell_array);
  }
  vmci_handle_arr_destroy(context->pending_doorbell_array);
  context->pending_doorbell_array = db_handle_array;
  db_handle_array = ((void*)0);
 } else {
  ctx_clear_notify_call(context);
 }
 spin_unlock(&context->lock);
 vmci_ctx_put(context);

 if (db_handle_array)
  vmci_handle_arr_destroy(db_handle_array);

 if (qp_handle_array)
  vmci_handle_arr_destroy(qp_handle_array);
}
