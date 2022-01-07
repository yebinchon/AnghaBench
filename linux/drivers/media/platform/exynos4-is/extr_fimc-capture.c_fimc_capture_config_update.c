
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fimc_dev {int state; TYPE_1__* drv_data; } ;
struct fimc_ctx {int d_frame; int s_frame; struct fimc_dev* fimc_dev; } ;
struct TYPE_2__ {scalar_t__ alpha_color; } ;


 int ST_CAPT_APPLY_CFG ;
 int clear_bit (int ,int *) ;
 int fimc_hw_set_camera_offset (struct fimc_dev*,int *) ;
 int fimc_hw_set_effect (struct fimc_ctx*) ;
 int fimc_hw_set_mainscaler (struct fimc_ctx*) ;
 int fimc_hw_set_out_dma (struct fimc_ctx*) ;
 int fimc_hw_set_prescaler (struct fimc_ctx*) ;
 int fimc_hw_set_rgb_alpha (struct fimc_ctx*) ;
 int fimc_hw_set_rotation (struct fimc_ctx*) ;
 int fimc_hw_set_target_format (struct fimc_ctx*) ;
 int fimc_prepare_dma_offset (struct fimc_ctx*,int *) ;
 int fimc_set_scaler_info (struct fimc_ctx*) ;

__attribute__((used)) static int fimc_capture_config_update(struct fimc_ctx *ctx)
{
 struct fimc_dev *fimc = ctx->fimc_dev;
 int ret;

 fimc_hw_set_camera_offset(fimc, &ctx->s_frame);

 ret = fimc_set_scaler_info(ctx);
 if (ret)
  return ret;

 fimc_hw_set_prescaler(ctx);
 fimc_hw_set_mainscaler(ctx);
 fimc_hw_set_target_format(ctx);
 fimc_hw_set_rotation(ctx);
 fimc_hw_set_effect(ctx);
 fimc_prepare_dma_offset(ctx, &ctx->d_frame);
 fimc_hw_set_out_dma(ctx);
 if (fimc->drv_data->alpha_color)
  fimc_hw_set_rgb_alpha(ctx);

 clear_bit(ST_CAPT_APPLY_CFG, &fimc->state);
 return ret;
}
