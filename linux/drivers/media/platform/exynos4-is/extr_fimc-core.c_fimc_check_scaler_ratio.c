
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; } ;
struct fimc_ctx {TYPE_1__ scaler; } ;


 int EINVAL ;
 int SCALER_MAX_HRATIO ;
 int SCALER_MAX_VRATIO ;
 int swap (int,int) ;

int fimc_check_scaler_ratio(struct fimc_ctx *ctx, int sw, int sh,
       int dw, int dh, int rotation)
{
 if (rotation == 90 || rotation == 270)
  swap(dw, dh);

 if (!ctx->scaler.enabled)
  return (sw == dw && sh == dh) ? 0 : -EINVAL;

 if ((sw >= SCALER_MAX_HRATIO * dw) || (sh >= SCALER_MAX_VRATIO * dh))
  return -EINVAL;

 return 0;
}
