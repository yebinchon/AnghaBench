
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct gsc_ctx* ctx; } ;
struct gsc_dev {int slock; int irq_queue; TYPE_1__ m2m; int state; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {int addr; } ;
struct gsc_ctx {int state; TYPE_2__ d_frame; TYPE_3__ s_frame; struct gsc_dev* gsc_dev; } ;


 int GSC_CTX_ABORT ;
 int GSC_CTX_STOP_REQ ;
 int GSC_M2M_BUF_NUM ;
 int GSC_PARAMS ;
 int ST_M2M_PEND ;
 scalar_t__ WARN (int,char*) ;
 int gsc_get_bufs (struct gsc_ctx*) ;
 int gsc_hw_enable_control (struct gsc_dev*,int) ;
 int gsc_hw_set_frm_done_irq_mask (struct gsc_dev*,int) ;
 int gsc_hw_set_global_alpha (struct gsc_ctx*) ;
 int gsc_hw_set_gsc_irq_enable (struct gsc_dev*,int) ;
 int gsc_hw_set_in_image_format (struct gsc_ctx*) ;
 int gsc_hw_set_in_size (struct gsc_ctx*) ;
 int gsc_hw_set_input_addr (struct gsc_dev*,int *,int ) ;
 int gsc_hw_set_input_buf_masking (struct gsc_dev*,int ,int) ;
 int gsc_hw_set_input_path (struct gsc_ctx*) ;
 int gsc_hw_set_mainscaler (struct gsc_ctx*) ;
 int gsc_hw_set_out_image_format (struct gsc_ctx*) ;
 int gsc_hw_set_out_size (struct gsc_ctx*) ;
 int gsc_hw_set_output_addr (struct gsc_dev*,int *,int ) ;
 int gsc_hw_set_output_buf_masking (struct gsc_dev*,int ,int) ;
 int gsc_hw_set_output_path (struct gsc_ctx*) ;
 int gsc_hw_set_prescaler (struct gsc_ctx*) ;
 int gsc_hw_set_rotation (struct gsc_ctx*) ;
 int gsc_hw_set_sfr_update (struct gsc_ctx*) ;
 int gsc_set_prefbuf (struct gsc_dev*,TYPE_3__*) ;
 scalar_t__ gsc_set_scaler_info (struct gsc_ctx*) ;
 int pr_debug (char*,struct gsc_ctx*,struct gsc_ctx*) ;
 int pr_err (char*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void gsc_m2m_device_run(void *priv)
{
 struct gsc_ctx *ctx = priv;
 struct gsc_dev *gsc;
 unsigned long flags;
 int ret;
 bool is_set = 0;

 if (WARN(!ctx, "null hardware context\n"))
  return;

 gsc = ctx->gsc_dev;
 spin_lock_irqsave(&gsc->slock, flags);

 set_bit(ST_M2M_PEND, &gsc->state);


 if (gsc->m2m.ctx != ctx) {
  pr_debug("gsc->m2m.ctx = 0x%p, current_ctx = 0x%p",
    gsc->m2m.ctx, ctx);
  ctx->state |= GSC_PARAMS;
  gsc->m2m.ctx = ctx;
 }

 is_set = ctx->state & GSC_CTX_STOP_REQ;
 if (is_set) {
  ctx->state &= ~GSC_CTX_STOP_REQ;
  ctx->state |= GSC_CTX_ABORT;
  wake_up(&gsc->irq_queue);
  goto put_device;
 }

 ret = gsc_get_bufs(ctx);
 if (ret) {
  pr_err("Wrong address");
  goto put_device;
 }

 gsc_set_prefbuf(gsc, &ctx->s_frame);
 gsc_hw_set_input_addr(gsc, &ctx->s_frame.addr, GSC_M2M_BUF_NUM);
 gsc_hw_set_output_addr(gsc, &ctx->d_frame.addr, GSC_M2M_BUF_NUM);

 if (ctx->state & GSC_PARAMS) {
  gsc_hw_set_input_buf_masking(gsc, GSC_M2M_BUF_NUM, 0);
  gsc_hw_set_output_buf_masking(gsc, GSC_M2M_BUF_NUM, 0);
  gsc_hw_set_frm_done_irq_mask(gsc, 0);
  gsc_hw_set_gsc_irq_enable(gsc, 1);

  if (gsc_set_scaler_info(ctx)) {
   pr_err("Scaler setup error");
   goto put_device;
  }

  gsc_hw_set_input_path(ctx);
  gsc_hw_set_in_size(ctx);
  gsc_hw_set_in_image_format(ctx);

  gsc_hw_set_output_path(ctx);
  gsc_hw_set_out_size(ctx);
  gsc_hw_set_out_image_format(ctx);

  gsc_hw_set_prescaler(ctx);
  gsc_hw_set_mainscaler(ctx);
  gsc_hw_set_rotation(ctx);
  gsc_hw_set_global_alpha(ctx);
 }


 gsc_hw_set_sfr_update(ctx);

 ctx->state &= ~GSC_PARAMS;
 gsc_hw_enable_control(gsc, 1);

 spin_unlock_irqrestore(&gsc->slock, flags);
 return;

put_device:
 ctx->state &= ~GSC_PARAMS;
 spin_unlock_irqrestore(&gsc->slock, flags);
}
