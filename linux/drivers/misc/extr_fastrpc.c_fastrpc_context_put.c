
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_invoke_ctx {int refcount; } ;


 int fastrpc_context_free ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void fastrpc_context_put(struct fastrpc_invoke_ctx *ctx)
{
 kref_put(&ctx->refcount, fastrpc_context_free);
}
