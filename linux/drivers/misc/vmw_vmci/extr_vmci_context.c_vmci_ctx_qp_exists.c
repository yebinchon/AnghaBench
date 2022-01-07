
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_handle {int dummy; } ;
struct vmci_ctx {int queue_pair_array; } ;


 int vmci_handle_arr_has_entry (int ,struct vmci_handle) ;
 scalar_t__ vmci_handle_is_invalid (struct vmci_handle) ;

bool vmci_ctx_qp_exists(struct vmci_ctx *context, struct vmci_handle handle)
{
 if (context == ((void*)0) || vmci_handle_is_invalid(handle))
  return 0;

 return vmci_handle_arr_has_entry(context->queue_pair_array, handle);
}
