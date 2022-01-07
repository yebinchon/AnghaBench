
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmci_ctx {int lock; int pending_datagrams; } ;


 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_SUCCESS ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vmci_ctx* vmci_ctx_get (int ) ;
 int vmci_ctx_put (struct vmci_ctx*) ;

int vmci_ctx_pending_datagrams(u32 cid, u32 *pending)
{
 struct vmci_ctx *context;

 context = vmci_ctx_get(cid);
 if (context == ((void*)0))
  return VMCI_ERROR_INVALID_ARGS;

 spin_lock(&context->lock);
 if (pending)
  *pending = context->pending_datagrams;
 spin_unlock(&context->lock);
 vmci_ctx_put(context);

 return VMCI_SUCCESS;
}
