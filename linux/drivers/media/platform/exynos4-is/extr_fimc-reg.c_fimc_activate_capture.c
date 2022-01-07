
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; } ;
struct fimc_ctx {TYPE_1__ scaler; int fimc_dev; } ;


 int fimc_hw_enable_capture (struct fimc_ctx*) ;
 int fimc_hw_enable_scaler (int ,int ) ;

void fimc_activate_capture(struct fimc_ctx *ctx)
{
 fimc_hw_enable_scaler(ctx->fimc_dev, ctx->scaler.enabled);
 fimc_hw_enable_capture(ctx);
}
