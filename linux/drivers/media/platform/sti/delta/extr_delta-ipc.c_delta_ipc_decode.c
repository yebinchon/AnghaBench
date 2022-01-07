
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_device {int ept; } ;
struct delta_ipc_param {scalar_t__ data; scalar_t__ size; } ;
struct delta_ipc_decode_msg {int param_size; int status_size; void* status_paddr; void* param_paddr; int header; } ;
struct delta_ipc_ctx {int cb_err; int done; TYPE_1__* ipc_buf; } ;
struct delta_dev {int dev; struct rpmsg_device* rpmsg_device; } ;
struct delta_ctx {int sys_errors; int name; struct delta_dev* dev; } ;
typedef int msg ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ vaddr; } ;


 int DELTA_IPC_DECODE ;
 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;
 int IPC_TIMEOUT ;
 int build_msg_header (struct delta_ipc_ctx*,int ,int *) ;
 int dev_err (int ,char*,int ,...) ;
 int is_valid_data (struct delta_ipc_ctx*,scalar_t__,int) ;
 int msecs_to_jiffies (int ) ;
 int rpmsg_send (int ,struct delta_ipc_decode_msg*,int) ;
 struct delta_ipc_ctx* to_ctx (void*) ;
 void* to_paddr (struct delta_ipc_ctx*,scalar_t__) ;
 struct delta_ctx* to_pctx (struct delta_ipc_ctx*) ;
 int wait_for_completion_timeout (int *,int ) ;

int delta_ipc_decode(void *hdl, struct delta_ipc_param *param,
       struct delta_ipc_param *status)
{
 struct delta_ipc_ctx *ctx = to_ctx(hdl);
 struct delta_ctx *pctx = to_pctx(ctx);
 struct delta_dev *delta = pctx->dev;
 struct rpmsg_device *rpmsg_device = delta->rpmsg_device;
 struct delta_ipc_decode_msg msg;
 int ret;

 if (!hdl) {
  dev_err(delta->dev,
   "%s   ipc: failed to decode, invalid ipc handle\n",
   pctx->name);
  return -EINVAL;
 }

 if (!rpmsg_device) {
  dev_err(delta->dev,
   "%s   ipc: failed to decode, rpmsg is not initialized\n",
   pctx->name);
  return -EINVAL;
 }

 if (!param || !param->data || !param->size) {
  dev_err(delta->dev,
   "%s  ipc: failed to decode, empty parameter\n",
   pctx->name);
  return -EINVAL;
 }

 if (!status || !status->data || !status->size) {
  dev_err(delta->dev,
   "%s  ipc: failed to decode, empty status\n",
   pctx->name);
  return -EINVAL;
 }

 if (param->size + status->size > ctx->ipc_buf->size) {
  dev_err(delta->dev,
   "%s   ipc: failed to decode, too large ipc parameter (%d bytes (param) + %d bytes (status) while max %d expected)\n",
   pctx->name,
   param->size,
   status->size,
   ctx->ipc_buf->size);
  return -EINVAL;
 }

 if (!is_valid_data(ctx, param->data, param->size)) {
  dev_err(delta->dev,
   "%s   ipc: failed to decode, parameter is not in expected address range (size=%d, data=%p not in %p..%p)\n",
   pctx->name,
   param->size,
   param->data,
   ctx->ipc_buf->vaddr,
   ctx->ipc_buf->vaddr + ctx->ipc_buf->size - 1);
  return -EINVAL;
 }

 if (!is_valid_data(ctx, status->data, status->size)) {
  dev_err(delta->dev,
   "%s   ipc: failed to decode, status is not in expected address range (size=%d, data=%p not in %p..%p)\n",
   pctx->name,
   status->size,
   status->data,
   ctx->ipc_buf->vaddr,
   ctx->ipc_buf->vaddr + ctx->ipc_buf->size - 1);
  return -EINVAL;
 }


 build_msg_header(ctx, DELTA_IPC_DECODE, &msg.header);

 msg.param_size = param->size;
 msg.param_paddr = to_paddr(ctx, param->data);

 msg.status_size = status->size;
 msg.status_paddr = to_paddr(ctx, status->data);


 ret = rpmsg_send(rpmsg_device->ept, &msg, sizeof(msg));
 if (ret) {
  dev_err(delta->dev,
   "%s   ipc: failed to decode, rpmsg_send failed (%d) for DELTA_IPC_DECODE (size=%d, data=%p)\n",
   pctx->name,
   ret, param->size, param->data);
  pctx->sys_errors++;
  return ret;
 }


 if (!wait_for_completion_timeout
     (&ctx->done, msecs_to_jiffies(IPC_TIMEOUT))) {
  dev_err(delta->dev,
   "%s   ipc: failed to decode, timeout waiting for DELTA_IPC_DECODE callback (size=%d, data=%p)\n",
   pctx->name,
   param->size, param->data);
  pctx->sys_errors++;
  return -ETIMEDOUT;
 }


 if (ctx->cb_err) {
  dev_err(delta->dev,
   "%s   ipc: failed to decode, DELTA_IPC_DECODE completed but with error (%d) (size=%d, data=%p)\n",
   pctx->name,
   ctx->cb_err, param->size, param->data);
  pctx->sys_errors++;
  return -EIO;
 }

 return 0;
}
