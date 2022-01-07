
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_ctx {scalar_t__ pending_datagrams; int pending_doorbell_array; } ;


 int ctx_clear_notify (struct vmci_ctx*) ;
 scalar_t__ vmci_handle_arr_get_size (int ) ;

__attribute__((used)) static void ctx_clear_notify_call(struct vmci_ctx *context)
{
 if (context->pending_datagrams == 0 &&
     vmci_handle_arr_get_size(context->pending_doorbell_array) == 0)
  ctx_clear_notify(context);
}
