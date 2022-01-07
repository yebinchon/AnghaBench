
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* fmt; int w; int size; } ;
struct TYPE_10__ {int size; TYPE_3__* fmt; int w; } ;
struct TYPE_8__ {int top; int left; int height; int width; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; struct s5p_jpeg* jpeg; TYPE_6__ cap_q; TYPE_4__ out_q; int scale_factor; int subsampling; TYPE_2__ crop_rect; int compr_quality; int restart_interval; } ;
struct s5p_jpeg {int slock; int regs; scalar_t__ irq_status; TYPE_1__* variant; } ;
struct TYPE_11__ {scalar_t__ fourcc; } ;
struct TYPE_9__ {scalar_t__ fourcc; } ;
struct TYPE_7__ {scalar_t__ htbl_reinit; } ;


 int EXYNOS3250_IRQ_TIMEOUT ;
 scalar_t__ S5P_JPEG_ENCODE ;
 scalar_t__ V4L2_PIX_FMT_RGB32 ;
 scalar_t__ V4L2_PIX_FMT_RGB565 ;
 scalar_t__ V4L2_PIX_FMT_RGB565X ;
 int exynos3250_jpeg_clk_set (int ) ;
 int exynos3250_jpeg_coef (int ,scalar_t__) ;
 int exynos3250_jpeg_dec_scaling_ratio (int ,int ) ;
 int exynos3250_jpeg_dec_stream_size (int ,int ) ;
 int exynos3250_jpeg_dri (int ,int ) ;
 int exynos3250_jpeg_enc_stream_bound (int ,int ) ;
 int exynos3250_jpeg_htbl_ac (int ,int) ;
 int exynos3250_jpeg_htbl_dc (int ,int) ;
 int exynos3250_jpeg_input_raw_fmt (int ,scalar_t__) ;
 int exynos3250_jpeg_interrupts_enable (int ) ;
 int exynos3250_jpeg_offset (int ,int ,int ) ;
 int exynos3250_jpeg_output_raw_fmt (int ,scalar_t__) ;
 int exynos3250_jpeg_poweron (int ) ;
 int exynos3250_jpeg_proc_mode (int ,scalar_t__) ;
 int exynos3250_jpeg_qtbl (int ,int,int) ;
 int exynos3250_jpeg_reset (int ) ;
 int exynos3250_jpeg_set_dma_num (int ) ;
 int exynos3250_jpeg_set_img_addr (struct s5p_jpeg_ctx*) ;
 int exynos3250_jpeg_set_jpeg_addr (struct s5p_jpeg_ctx*) ;
 int exynos3250_jpeg_set_timer (int ,int ) ;
 int exynos3250_jpeg_set_x (int ,int ) ;
 int exynos3250_jpeg_set_y (int ,int ) ;
 int exynos3250_jpeg_set_y16 (int ,int) ;
 int exynos3250_jpeg_start (int ) ;
 int exynos3250_jpeg_stride (int ,scalar_t__,int ) ;
 int exynos3250_jpeg_subsampling_mode (int ,int ) ;
 int s5p_jpeg_set_hactbl (int ) ;
 int s5p_jpeg_set_hactblg (int ) ;
 int s5p_jpeg_set_hdctbl (int ) ;
 int s5p_jpeg_set_hdctblg (int ) ;
 int s5p_jpeg_set_qtbl_chr (int ,int ) ;
 int s5p_jpeg_set_qtbl_lum (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void exynos3250_jpeg_device_run(void *priv)
{
 struct s5p_jpeg_ctx *ctx = priv;
 struct s5p_jpeg *jpeg = ctx->jpeg;
 unsigned long flags;

 spin_lock_irqsave(&ctx->jpeg->slock, flags);

 exynos3250_jpeg_reset(jpeg->regs);
 exynos3250_jpeg_set_dma_num(jpeg->regs);
 exynos3250_jpeg_poweron(jpeg->regs);
 exynos3250_jpeg_clk_set(jpeg->regs);
 exynos3250_jpeg_proc_mode(jpeg->regs, ctx->mode);

 if (ctx->mode == S5P_JPEG_ENCODE) {
  exynos3250_jpeg_input_raw_fmt(jpeg->regs,
           ctx->out_q.fmt->fourcc);
  exynos3250_jpeg_dri(jpeg->regs, ctx->restart_interval);





  s5p_jpeg_set_qtbl_lum(jpeg->regs, ctx->compr_quality);
  s5p_jpeg_set_qtbl_chr(jpeg->regs, ctx->compr_quality);

  exynos3250_jpeg_qtbl(jpeg->regs, 1, 0);

  exynos3250_jpeg_qtbl(jpeg->regs, 2, 1);
  exynos3250_jpeg_qtbl(jpeg->regs, 3, 1);




  if (jpeg->variant->htbl_reinit) {
   s5p_jpeg_set_hdctbl(jpeg->regs);
   s5p_jpeg_set_hdctblg(jpeg->regs);
   s5p_jpeg_set_hactbl(jpeg->regs);
   s5p_jpeg_set_hactblg(jpeg->regs);
  }


  exynos3250_jpeg_htbl_ac(jpeg->regs, 1);
  exynos3250_jpeg_htbl_dc(jpeg->regs, 1);
  exynos3250_jpeg_htbl_ac(jpeg->regs, 2);
  exynos3250_jpeg_htbl_dc(jpeg->regs, 2);
  exynos3250_jpeg_htbl_ac(jpeg->regs, 3);
  exynos3250_jpeg_htbl_dc(jpeg->regs, 3);

  exynos3250_jpeg_set_x(jpeg->regs, ctx->crop_rect.width);
  exynos3250_jpeg_set_y(jpeg->regs, ctx->crop_rect.height);
  exynos3250_jpeg_stride(jpeg->regs, ctx->out_q.fmt->fourcc,
        ctx->out_q.w);
  exynos3250_jpeg_offset(jpeg->regs, ctx->crop_rect.left,
       ctx->crop_rect.top);
  exynos3250_jpeg_set_img_addr(ctx);
  exynos3250_jpeg_set_jpeg_addr(ctx);
  exynos3250_jpeg_subsampling_mode(jpeg->regs, ctx->subsampling);


  exynos3250_jpeg_enc_stream_bound(jpeg->regs, ctx->cap_q.size);

  if (ctx->out_q.fmt->fourcc == V4L2_PIX_FMT_RGB565 ||
      ctx->out_q.fmt->fourcc == V4L2_PIX_FMT_RGB565X ||
      ctx->out_q.fmt->fourcc == V4L2_PIX_FMT_RGB32)
   exynos3250_jpeg_set_y16(jpeg->regs, 1);
 } else {
  exynos3250_jpeg_set_img_addr(ctx);
  exynos3250_jpeg_set_jpeg_addr(ctx);
  exynos3250_jpeg_stride(jpeg->regs, ctx->cap_q.fmt->fourcc,
        ctx->cap_q.w);
  exynos3250_jpeg_offset(jpeg->regs, 0, 0);
  exynos3250_jpeg_dec_scaling_ratio(jpeg->regs,
       ctx->scale_factor);
  exynos3250_jpeg_dec_stream_size(jpeg->regs, ctx->out_q.size);
  exynos3250_jpeg_output_raw_fmt(jpeg->regs,
      ctx->cap_q.fmt->fourcc);
 }

 exynos3250_jpeg_interrupts_enable(jpeg->regs);


 exynos3250_jpeg_coef(jpeg->regs, ctx->mode);

 exynos3250_jpeg_set_timer(jpeg->regs, EXYNOS3250_IRQ_TIMEOUT);
 jpeg->irq_status = 0;
 exynos3250_jpeg_start(jpeg->regs);

 spin_unlock_irqrestore(&ctx->jpeg->slock, flags);
}
