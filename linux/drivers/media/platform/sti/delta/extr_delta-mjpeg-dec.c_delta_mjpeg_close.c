
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_mjpeg_ctx {int * ipc_hdl; } ;
struct delta_ctx {int dummy; } ;


 int delta_ipc_close (int *) ;
 int kfree (struct delta_mjpeg_ctx*) ;
 struct delta_mjpeg_ctx* to_ctx (struct delta_ctx*) ;

__attribute__((used)) static int delta_mjpeg_close(struct delta_ctx *pctx)
{
 struct delta_mjpeg_ctx *ctx = to_ctx(pctx);

 if (ctx->ipc_hdl) {
  delta_ipc_close(ctx->ipc_hdl);
  ctx->ipc_hdl = ((void*)0);
 }

 kfree(ctx);

 return 0;
}
