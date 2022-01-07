
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {scalar_t__ curr_ctx; scalar_t__ num_inst; int mfc_mutex; int ** ctx; int watchdog_timer; int hw_lock; } ;
struct s5p_mfc_ctx {scalar_t__ state; scalar_t__ num; int fh; int vq_dst; int vq_src; struct s5p_mfc_dev* dev; } ;
struct file {int private_data; } ;


 scalar_t__ MFCINST_FREE ;
 scalar_t__ MFCINST_INIT ;
 int clear_bit (int ,int *) ;
 int clear_work_bit_irqsave (struct s5p_mfc_ctx*) ;
 int del_timer_sync (int *) ;
 struct s5p_mfc_ctx* fh_to_ctx (int ) ;
 int kfree (struct s5p_mfc_ctx*) ;
 int mfc_debug (int,char*) ;
 int mfc_debug_enter () ;
 int mfc_debug_leave () ;
 int mfc_err (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s5p_mfc_clock_off () ;
 int s5p_mfc_clock_on () ;
 int s5p_mfc_close_mfc_inst (struct s5p_mfc_dev*,struct s5p_mfc_ctx*) ;
 int s5p_mfc_dec_ctrls_delete (struct s5p_mfc_ctx*) ;
 int s5p_mfc_deinit_hw (struct s5p_mfc_dev*) ;
 scalar_t__ s5p_mfc_power_off () ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 int vb2_queue_release (int *) ;

__attribute__((used)) static int s5p_mfc_release(struct file *file)
{
 struct s5p_mfc_ctx *ctx = fh_to_ctx(file->private_data);
 struct s5p_mfc_dev *dev = ctx->dev;


 mfc_debug_enter();
 if (dev)
  mutex_lock(&dev->mfc_mutex);
 vb2_queue_release(&ctx->vq_src);
 vb2_queue_release(&ctx->vq_dst);
 if (dev) {
  s5p_mfc_clock_on();


  clear_work_bit_irqsave(ctx);




  if (ctx->state != MFCINST_FREE && ctx->state != MFCINST_INIT) {
   mfc_debug(2, "Has to free instance\n");
   s5p_mfc_close_mfc_inst(dev, ctx);
  }

  if (dev->curr_ctx == ctx->num)
   clear_bit(0, &dev->hw_lock);
  dev->num_inst--;
  if (dev->num_inst == 0) {
   mfc_debug(2, "Last instance\n");
   s5p_mfc_deinit_hw(dev);
   del_timer_sync(&dev->watchdog_timer);
   s5p_mfc_clock_off();
   if (s5p_mfc_power_off() < 0)
    mfc_err("Power off failed\n");
  } else {
   mfc_debug(2, "Shutting down clock\n");
   s5p_mfc_clock_off();
  }
 }
 if (dev)
  dev->ctx[ctx->num] = ((void*)0);
 s5p_mfc_dec_ctrls_delete(ctx);
 v4l2_fh_del(&ctx->fh);

 if (dev)
  v4l2_fh_exit(&ctx->fh);
 kfree(ctx);
 mfc_debug_leave();
 if (dev)
  mutex_unlock(&dev->mfc_mutex);

 return 0;
}
