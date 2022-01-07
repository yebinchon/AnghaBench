
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_device {int ept; } ;
struct delta_ipc_ctx {int cb_err; int done; int * ipc_buf; } ;
struct delta_ipc_close_msg {int header; } ;
struct delta_dev {int dev; struct rpmsg_device* rpmsg_device; } ;
struct delta_ctx {int sys_errors; int name; struct delta_dev* dev; } ;
typedef int msg ;


 int DELTA_IPC_CLOSE ;
 int IPC_TIMEOUT ;
 int build_msg_header (struct delta_ipc_ctx*,int ,int *) ;
 int dev_err (int ,char*,int ,...) ;
 int hw_free (struct delta_ctx*,int *) ;
 int msecs_to_jiffies (int ) ;
 int rpmsg_send (int ,struct delta_ipc_close_msg*,int) ;
 struct delta_ipc_ctx* to_ctx (void*) ;
 struct delta_ctx* to_pctx (struct delta_ipc_ctx*) ;
 int wait_for_completion_timeout (int *,int ) ;

void delta_ipc_close(void *hdl)
{
 struct delta_ipc_ctx *ctx = to_ctx(hdl);
 struct delta_ctx *pctx = to_pctx(ctx);
 struct delta_dev *delta = pctx->dev;
 struct rpmsg_device *rpmsg_device = delta->rpmsg_device;
 struct delta_ipc_close_msg msg;
 int ret;

 if (!hdl) {
  dev_err(delta->dev,
   "%s   ipc: failed to close, invalid ipc handle\n",
   pctx->name);
  return;
 }

 if (ctx->ipc_buf) {
  hw_free(pctx, ctx->ipc_buf);
  ctx->ipc_buf = ((void*)0);
 }

 if (!rpmsg_device) {
  dev_err(delta->dev,
   "%s   ipc: failed to close, rpmsg is not initialized\n",
   pctx->name);
  return;
 }


 build_msg_header(ctx, DELTA_IPC_CLOSE, &msg.header);


 ret = rpmsg_send(rpmsg_device->ept, &msg, sizeof(msg));
 if (ret) {
  dev_err(delta->dev,
   "%s   ipc: failed to close, rpmsg_send failed (%d) for DELTA_IPC_CLOSE\n",
   pctx->name, ret);
  pctx->sys_errors++;
  return;
 }


 if (!wait_for_completion_timeout
     (&ctx->done, msecs_to_jiffies(IPC_TIMEOUT))) {
  dev_err(delta->dev,
   "%s   ipc: failed to close, timeout waiting for DELTA_IPC_CLOSE callback\n",
   pctx->name);
  pctx->sys_errors++;
  return;
 }


 if (ctx->cb_err) {
  dev_err(delta->dev,
   "%s   ipc: failed to close, DELTA_IPC_CLOSE completed but with error (%d)\n",
   pctx->name, ctx->cb_err);
  pctx->sys_errors++;
 }
}
