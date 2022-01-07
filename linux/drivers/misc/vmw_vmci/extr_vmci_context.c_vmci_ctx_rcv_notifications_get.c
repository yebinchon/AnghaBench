
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmci_handle_arr {int dummy; } ;
struct vmci_ctx {int lock; struct vmci_handle_arr* pending_doorbell_array; } ;


 int VMCI_ERROR_NOT_FOUND ;
 int VMCI_ERROR_NO_MEM ;
 int VMCI_MAX_GUEST_DOORBELL_COUNT ;
 int VMCI_SUCCESS ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vmci_ctx* vmci_ctx_get (int ) ;
 int vmci_ctx_put (struct vmci_ctx*) ;
 struct vmci_handle_arr* vmci_handle_arr_create (int ,int ) ;

int vmci_ctx_rcv_notifications_get(u32 context_id,
       struct vmci_handle_arr **db_handle_array,
       struct vmci_handle_arr **qp_handle_array)
{
 struct vmci_ctx *context;
 int result = VMCI_SUCCESS;

 context = vmci_ctx_get(context_id);
 if (context == ((void*)0))
  return VMCI_ERROR_NOT_FOUND;

 spin_lock(&context->lock);

 *db_handle_array = context->pending_doorbell_array;
 context->pending_doorbell_array =
  vmci_handle_arr_create(0, VMCI_MAX_GUEST_DOORBELL_COUNT);
 if (!context->pending_doorbell_array) {
  context->pending_doorbell_array = *db_handle_array;
  *db_handle_array = ((void*)0);
  result = VMCI_ERROR_NO_MEM;
 }
 *qp_handle_array = ((void*)0);

 spin_unlock(&context->lock);
 vmci_ctx_put(context);

 return result;
}
