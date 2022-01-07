
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_channel_ctx {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static void fastrpc_channel_ctx_get(struct fastrpc_channel_ctx *cctx)
{
 kref_get(&cctx->refcount);
}
