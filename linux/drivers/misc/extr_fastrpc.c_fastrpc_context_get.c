
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_invoke_ctx {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static void fastrpc_context_get(struct fastrpc_invoke_ctx *ctx)
{
 kref_get(&ctx->refcount);
}
