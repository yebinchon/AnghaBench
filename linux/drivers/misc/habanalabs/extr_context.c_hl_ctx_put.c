
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_ctx {int refcount; } ;


 int hl_ctx_do_release ;
 int kref_put (int *,int ) ;

int hl_ctx_put(struct hl_ctx *ctx)
{
 return kref_put(&ctx->refcount, hl_ctx_do_release);
}
