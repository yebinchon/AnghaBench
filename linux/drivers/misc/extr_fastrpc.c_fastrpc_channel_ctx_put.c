
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_channel_ctx {int refcount; } ;


 int fastrpc_channel_ctx_free ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void fastrpc_channel_ctx_put(struct fastrpc_channel_ctx *cctx)
{
 kref_put(&cctx->refcount, fastrpc_channel_ctx_free);
}
