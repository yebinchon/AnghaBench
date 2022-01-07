
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmci_ctx {int lock; } ;



 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_NOT_FOUND ;

 int VMCI_SUCCESS ;

 int pr_devel (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vmci_ctx* vmci_ctx_get (int) ;
 int vmci_ctx_get_chkpt_doorbells (struct vmci_ctx*,int*,void**) ;
 int vmci_ctx_get_chkpt_notifiers (struct vmci_ctx*,int*,void**) ;
 int vmci_ctx_put (struct vmci_ctx*) ;

int vmci_ctx_get_chkpt_state(u32 context_id,
        u32 cpt_type,
        u32 *buf_size,
        void **pbuf)
{
 struct vmci_ctx *context;
 int result;

 context = vmci_ctx_get(context_id);
 if (!context)
  return VMCI_ERROR_NOT_FOUND;

 spin_lock(&context->lock);

 switch (cpt_type) {
 case 129:
  result = vmci_ctx_get_chkpt_notifiers(context, buf_size, pbuf);
  break;

 case 128:





  *buf_size = 0;
  *pbuf = ((void*)0);
  result = VMCI_SUCCESS;
  break;

 case 130:
  result = vmci_ctx_get_chkpt_doorbells(context, buf_size, pbuf);
  break;

 default:
  pr_devel("Invalid cpt state (type=%d)\n", cpt_type);
  result = VMCI_ERROR_INVALID_ARGS;
  break;
 }

 spin_unlock(&context->lock);
 vmci_ctx_put(context);

 return result;
}
