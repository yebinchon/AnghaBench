
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct mtk_vcodec_ctx {scalar_t__ int_type; int int_cond; int type; int id; int queue; } ;


 long ERESTARTSYS ;
 long msecs_to_jiffies (unsigned int) ;
 int mtk_v4l2_err (char*,int ,int ,int,unsigned int,scalar_t__,...) ;
 long wait_event_interruptible_timeout (int ,int ,long) ;

int mtk_vcodec_wait_for_done_ctx(struct mtk_vcodec_ctx *ctx, int command,
     unsigned int timeout_ms)
{
 wait_queue_head_t *waitqueue;
 long timeout_jiff, ret;
 int status = 0;

 waitqueue = (wait_queue_head_t *)&ctx->queue;
 timeout_jiff = msecs_to_jiffies(timeout_ms);

 ret = wait_event_interruptible_timeout(*waitqueue,
    ctx->int_cond,
    timeout_jiff);

 if (!ret) {
  status = -1;
  mtk_v4l2_err("[%d] cmd=%d, ctx->type=%d, wait_event_interruptible_timeout time=%ums out %d %d!",
    ctx->id, ctx->type, command, timeout_ms,
    ctx->int_cond, ctx->int_type);
 } else if (-ERESTARTSYS == ret) {
  mtk_v4l2_err("[%d] cmd=%d, ctx->type=%d, wait_event_interruptible_timeout interrupted by a signal %d %d",
    ctx->id, ctx->type, command, ctx->int_cond,
    ctx->int_type);
  status = -1;
 }

 ctx->int_cond = 0;
 ctx->int_type = 0;

 return status;
}
