
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_ctx {int kref; } ;


 int ctx_free_ctx ;
 int kref_put (int *,int ) ;

void vmci_ctx_put(struct vmci_ctx *context)
{
 kref_put(&context->kref, ctx_free_ctx);
}
