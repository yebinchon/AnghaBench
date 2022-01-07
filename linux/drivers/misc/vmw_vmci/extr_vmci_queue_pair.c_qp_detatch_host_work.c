
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_handle {int dummy; } ;
struct vmci_ctx {int dummy; } ;


 int VMCI_HOST_CONTEXT_ID ;
 struct vmci_ctx* vmci_ctx_get (int ) ;
 int vmci_ctx_put (struct vmci_ctx*) ;
 int vmci_qp_broker_detach (struct vmci_handle,struct vmci_ctx*) ;

__attribute__((used)) static int qp_detatch_host_work(struct vmci_handle handle)
{
 int result;
 struct vmci_ctx *context;

 context = vmci_ctx_get(VMCI_HOST_CONTEXT_ID);

 result = vmci_qp_broker_detach(handle, context);

 vmci_ctx_put(context);
 return result;
}
