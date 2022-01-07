
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enabled; } ;
struct fimc_ctx {TYPE_2__* fimc_dev; TYPE_1__ scaler; } ;
typedef enum fimc_color_fmt { ____Placeholder_fimc_color_fmt } fimc_color_fmt ;
struct TYPE_4__ {int state; } ;


 int ST_CAPT_JPEG ;
 int clear_bit (int ,int *) ;
 int fimc_ctrls_activate (struct fimc_ctx*,int) ;
 int fimc_fmt_is_user_defined (int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void fimc_capture_mark_jpeg_xfer(struct fimc_ctx *ctx,
     enum fimc_color_fmt color)
{
 bool jpeg = fimc_fmt_is_user_defined(color);

 ctx->scaler.enabled = !jpeg;
 fimc_ctrls_activate(ctx, !jpeg);

 if (jpeg)
  set_bit(ST_CAPT_JPEG, &ctx->fimc_dev->state);
 else
  clear_bit(ST_CAPT_JPEG, &ctx->fimc_dev->state);
}
