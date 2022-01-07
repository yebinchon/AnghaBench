
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int mfc_ops; int hw_lock; } ;
struct s5p_mfc_ctx {int state; int vq_src; int src_queue; int vq_dst; int dst_queue; } ;


 void* MFCINST_ERROR ;






 int WARN_ON (int) ;
 int clear_int_flags ;
 int clear_work_bit (struct s5p_mfc_ctx*) ;
 int mfc_err (char*,unsigned int) ;
 int s5p_mfc_cleanup_queue (int *,int *) ;
 int s5p_mfc_clock_off () ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_up_ctx (struct s5p_mfc_ctx*,unsigned int,unsigned int) ;
 int wake_up_dev (struct s5p_mfc_dev*,unsigned int,unsigned int) ;

__attribute__((used)) static void s5p_mfc_handle_error(struct s5p_mfc_dev *dev,
  struct s5p_mfc_ctx *ctx, unsigned int reason, unsigned int err)
{
 mfc_err("Interrupt Error: %08x\n", err);

 if (ctx) {

  switch (ctx->state) {
  case 129:
  case 130:
  case 131:
  case 132:
  case 133:
  case 128:


   clear_work_bit(ctx);
   ctx->state = MFCINST_ERROR;

   s5p_mfc_cleanup_queue(&ctx->dst_queue, &ctx->vq_dst);

   s5p_mfc_cleanup_queue(&ctx->src_queue, &ctx->vq_src);
   wake_up_ctx(ctx, reason, err);
   break;
  default:
   clear_work_bit(ctx);
   ctx->state = MFCINST_ERROR;
   wake_up_ctx(ctx, reason, err);
   break;
  }
 }
 WARN_ON(test_and_clear_bit(0, &dev->hw_lock) == 0);
 s5p_mfc_hw_call(dev->mfc_ops, clear_int_flags, dev);
 s5p_mfc_clock_off();
 wake_up_dev(dev, reason, err);
}
