
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_device {int ept; } ;
struct delta_ipc_set_stream_msg {int param_paddr; scalar_t__ param_size; int header; } ;
struct delta_ipc_param {int data; scalar_t__ size; } ;
struct delta_ipc_ctx {int cb_err; int done; TYPE_1__* ipc_buf; } ;
struct delta_dev {int dev; struct rpmsg_device* rpmsg_device; } ;
struct delta_ctx {int sys_errors; int name; struct delta_dev* dev; } ;
typedef int msg ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ vaddr; } ;


 int DELTA_IPC_SET_STREAM ;
 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;
 int IPC_TIMEOUT ;
 int build_msg_header (struct delta_ipc_ctx*,int ,int *) ;
 int dev_err (int ,char*,int ,...) ;
 int is_valid_data (struct delta_ipc_ctx*,int ,scalar_t__) ;
 int msecs_to_jiffies (int ) ;
 int rpmsg_send (int ,struct delta_ipc_set_stream_msg*,int) ;
 struct delta_ipc_ctx* to_ctx (void*) ;
 int to_paddr (struct delta_ipc_ctx*,int ) ;
 struct delta_ctx* to_pctx (struct delta_ipc_ctx*) ;
 int wait_for_completion_timeout (int *,int ) ;

int delta_ipc_set_stream(void *hdl, struct delta_ipc_param *param)
{
 struct delta_ipc_ctx *ctx = to_ctx(hdl);
 struct delta_ctx *pctx = to_pctx(ctx);
 struct delta_dev *delta = pctx->dev;
 struct rpmsg_device *rpmsg_device = delta->rpmsg_device;
 struct delta_ipc_set_stream_msg msg;
 int ret;

 if (!hdl) {
  dev_err(delta->dev,
   "%s   ipc: failed to set stream, invalid ipc handle\n",
   pctx->name);
  return -EINVAL;
 }

 if (!rpmsg_device) {
  dev_err(delta->dev,
   "%s   ipc: failed to set stream, rpmsg is not initialized\n",
   pctx->name);
  return -EINVAL;
 }

 if (!param || !param->data || !param->size) {
  dev_err(delta->dev,
   "%s  ipc: failed to set stream, empty parameter\n",
   pctx->name);
  return -EINVAL;
 }

 if (param->size > ctx->ipc_buf->size) {
  dev_err(delta->dev,
   "%s   ipc: failed to set stream, too large ipc parameter(%d bytes while max %d expected)\n",
   pctx->name,
   param->size, ctx->ipc_buf->size);
  return -EINVAL;
 }

 if (!is_valid_data(ctx, param->data, param->size)) {
  dev_err(delta->dev,
   "%s   ipc: failed to set stream, parameter is not in expected address range (size=%d, data=%p not in %p..%p)\n",
   pctx->name,
   param->size,
   param->data,
   ctx->ipc_buf->vaddr,
   ctx->ipc_buf->vaddr + ctx->ipc_buf->size - 1);
  return -EINVAL;
 }


 build_msg_header(ctx, DELTA_IPC_SET_STREAM, &msg.header);

 msg.param_size = param->size;
 msg.param_paddr = to_paddr(ctx, param->data);


 ret = rpmsg_send(rpmsg_device->ept, &msg, sizeof(msg));
 if (ret) {
  dev_err(delta->dev,
   "%s   ipc: failed to set stream, rpmsg_send failed (%d) for DELTA_IPC_SET_STREAM (size=%d, data=%p)\n",
   pctx->name,
   ret, param->size, param->data);
  pctx->sys_errors++;
  return ret;
 }


 if (!wait_for_completion_timeout
     (&ctx->done, msecs_to_jiffies(IPC_TIMEOUT))) {
  dev_err(delta->dev,
   "%s   ipc: failed to set stream, timeout waiting for DELTA_IPC_SET_STREAM callback (size=%d, data=%p)\n",
   pctx->name,
   param->size, param->data);
  pctx->sys_errors++;
  return -ETIMEDOUT;
 }


 if (ctx->cb_err) {
  dev_err(delta->dev,
   "%s   ipc: failed to set stream, DELTA_IPC_SET_STREAM completed but with error (%d) (size=%d, data=%p)\n",
   pctx->name,
   ctx->cb_err, param->size, param->data);
  pctx->sys_errors++;
  return -EIO;
 }

 return 0;
}
