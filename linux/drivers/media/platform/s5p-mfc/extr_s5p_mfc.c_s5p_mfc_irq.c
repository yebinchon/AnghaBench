
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_mfc_dev {size_t curr_ctx; void* warn_start; int irqlock; int mfc_ops; int hw_lock; int enter_suspend; struct s5p_mfc_ctx** ctx; int watchdog_cnt; } ;
struct s5p_mfc_ctx {unsigned int int_type; unsigned int int_err; int int_cond; int queue; int state; void* inst_no; int ref_queue; TYPE_1__* c_ops; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* post_frame_start ) (struct s5p_mfc_ctx*) ;} ;


 int IRQ_HANDLED ;
 int MFCINST_FINISHING ;
 int MFCINST_FREE ;
 int MFCINST_GOT_INST ;
 int MFCINST_RUNNING ;
 void* MFC_NO_INSTANCE_SET ;
 unsigned int S5P_FIMV_ERR_INCOMPLETE_FRAME ;
 unsigned int S5P_FIMV_ERR_NO_VALID_SEQ_HDR ;
 unsigned int S5P_FIMV_ERR_TIMEOUT ;
 int WARN_ON (int) ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 int clear_int_flags ;
 int clear_work_bit (struct s5p_mfc_ctx*) ;
 int err_dec ;
 int get_inst_no ;
 int get_int_err ;
 int get_int_reason ;
 int list_empty (int *) ;
 int mfc_debug (int,char*,...) ;
 int mfc_debug_enter () ;
 int mfc_debug_leave () ;
 int mfc_err (char*) ;
 int s5p_mfc_clock_off () ;
 int s5p_mfc_handle_error (struct s5p_mfc_dev*,struct s5p_mfc_ctx*,unsigned int,unsigned int) ;
 int s5p_mfc_handle_frame (struct s5p_mfc_ctx*,unsigned int,unsigned int) ;
 int s5p_mfc_handle_init_buffers (struct s5p_mfc_ctx*,unsigned int,unsigned int) ;
 int s5p_mfc_handle_seq_done (struct s5p_mfc_ctx*,unsigned int,unsigned int) ;
 int s5p_mfc_handle_stream_complete (struct s5p_mfc_ctx*) ;
 void* s5p_mfc_hw_call (int ,int ,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct s5p_mfc_ctx*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int try_run ;
 int wake_up (int *) ;
 int wake_up_ctx (struct s5p_mfc_ctx*,unsigned int,unsigned int) ;
 int wake_up_dev (struct s5p_mfc_dev*,unsigned int,unsigned int) ;

__attribute__((used)) static irqreturn_t s5p_mfc_irq(int irq, void *priv)
{
 struct s5p_mfc_dev *dev = priv;
 struct s5p_mfc_ctx *ctx;
 unsigned int reason;
 unsigned int err;

 mfc_debug_enter();

 atomic_set(&dev->watchdog_cnt, 0);
 spin_lock(&dev->irqlock);
 ctx = dev->ctx[dev->curr_ctx];

 reason = s5p_mfc_hw_call(dev->mfc_ops, get_int_reason, dev);
 err = s5p_mfc_hw_call(dev->mfc_ops, get_int_err, dev);
 mfc_debug(1, "Int reason: %d (err: %08x)\n", reason, err);
 switch (reason) {
 case 138:

  if (ctx->state == MFCINST_RUNNING &&
   (s5p_mfc_hw_call(dev->mfc_ops, err_dec, err) >=
    dev->warn_start ||
    err == S5P_FIMV_ERR_NO_VALID_SEQ_HDR ||
    err == S5P_FIMV_ERR_INCOMPLETE_FRAME ||
    err == S5P_FIMV_ERR_TIMEOUT))
   s5p_mfc_handle_frame(ctx, reason, err);
  else
   s5p_mfc_handle_error(dev, ctx, reason, err);
  clear_bit(0, &dev->enter_suspend);
  break;

 case 130:
 case 137:
 case 136:
  if (ctx->c_ops->post_frame_start) {
   if (ctx->c_ops->post_frame_start(ctx))
    mfc_err("post_frame_start() failed\n");

   if (ctx->state == MFCINST_FINISHING &&
      list_empty(&ctx->ref_queue)) {
    s5p_mfc_hw_call(dev->mfc_ops, clear_int_flags, dev);
    s5p_mfc_handle_stream_complete(ctx);
    break;
   }
   s5p_mfc_hw_call(dev->mfc_ops, clear_int_flags, dev);
   WARN_ON(test_and_clear_bit(0, &dev->hw_lock) == 0);
   s5p_mfc_clock_off();
   wake_up_ctx(ctx, reason, err);
   s5p_mfc_hw_call(dev->mfc_ops, try_run, dev);
  } else {
   s5p_mfc_handle_frame(ctx, reason, err);
  }
  break;

 case 132:
  s5p_mfc_handle_seq_done(ctx, reason, err);
  break;

 case 133:
  ctx->inst_no = s5p_mfc_hw_call(dev->mfc_ops, get_inst_no, dev);
  ctx->state = MFCINST_GOT_INST;
  goto irq_cleanup_hw;

 case 141:
  ctx->inst_no = MFC_NO_INSTANCE_SET;
  ctx->state = MFCINST_FREE;
  goto irq_cleanup_hw;

 case 129:
 case 135:
 case 131:
 case 128:
  if (ctx)
   clear_work_bit(ctx);
  s5p_mfc_hw_call(dev->mfc_ops, clear_int_flags, dev);
  clear_bit(0, &dev->hw_lock);
  clear_bit(0, &dev->enter_suspend);
  wake_up_dev(dev, reason, err);
  break;

 case 134:
  s5p_mfc_handle_init_buffers(ctx, reason, err);
  break;

 case 140:
  s5p_mfc_hw_call(dev->mfc_ops, clear_int_flags, dev);
  ctx->int_type = reason;
  ctx->int_err = err;
  s5p_mfc_handle_stream_complete(ctx);
  break;

 case 139:
  ctx->state = MFCINST_RUNNING;
  goto irq_cleanup_hw;

 default:
  mfc_debug(2, "Unknown int reason\n");
  s5p_mfc_hw_call(dev->mfc_ops, clear_int_flags, dev);
 }
 spin_unlock(&dev->irqlock);
 mfc_debug_leave();
 return IRQ_HANDLED;
irq_cleanup_hw:
 s5p_mfc_hw_call(dev->mfc_ops, clear_int_flags, dev);
 ctx->int_type = reason;
 ctx->int_err = err;
 ctx->int_cond = 1;
 if (test_and_clear_bit(0, &dev->hw_lock) == 0)
  mfc_err("Failed to unlock hw\n");

 s5p_mfc_clock_off();
 clear_work_bit(ctx);
 wake_up(&ctx->queue);

 s5p_mfc_hw_call(dev->mfc_ops, try_run, dev);
 spin_unlock(&dev->irqlock);
 mfc_debug(2, "Exit via irq_cleanup_hw\n");
 return IRQ_HANDLED;
}
