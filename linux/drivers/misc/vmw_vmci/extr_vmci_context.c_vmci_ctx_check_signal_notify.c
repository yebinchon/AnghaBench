
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_ctx {int lock; scalar_t__ pending_datagrams; } ;


 int ctx_signal_notify (struct vmci_ctx*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void vmci_ctx_check_signal_notify(struct vmci_ctx *context)
{
 spin_lock(&context->lock);
 if (context->pending_datagrams)
  ctx_signal_notify(context);
 spin_unlock(&context->lock);
}
