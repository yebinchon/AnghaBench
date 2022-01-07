
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fimc_effect {int pat_cb; int pat_cr; void* type; } ;
struct TYPE_4__ {TYPE_1__* colorfx_cbcr; } ;
struct fimc_ctx {TYPE_2__ ctrls; struct fimc_effect effect; } ;
typedef enum v4l2_colorfx { ____Placeholder_v4l2_colorfx } v4l2_colorfx ;
struct TYPE_3__ {int val; } ;


 int EINVAL ;
 void* FIMC_REG_CIIMGEFF_FIN_ARBITRARY ;
 void* FIMC_REG_CIIMGEFF_FIN_ARTFREEZE ;
 void* FIMC_REG_CIIMGEFF_FIN_BYPASS ;
 void* FIMC_REG_CIIMGEFF_FIN_EMBOSSING ;
 void* FIMC_REG_CIIMGEFF_FIN_NEGATIVE ;
 void* FIMC_REG_CIIMGEFF_FIN_SILHOUETTE ;
__attribute__((used)) static int fimc_set_color_effect(struct fimc_ctx *ctx, enum v4l2_colorfx colorfx)
{
 struct fimc_effect *effect = &ctx->effect;

 switch (colorfx) {
 case 131:
  effect->type = FIMC_REG_CIIMGEFF_FIN_BYPASS;
  break;
 case 134:
  effect->type = FIMC_REG_CIIMGEFF_FIN_ARBITRARY;
  effect->pat_cb = 128;
  effect->pat_cr = 128;
  break;
 case 130:
  effect->type = FIMC_REG_CIIMGEFF_FIN_ARBITRARY;
  effect->pat_cb = 115;
  effect->pat_cr = 145;
  break;
 case 132:
  effect->type = FIMC_REG_CIIMGEFF_FIN_NEGATIVE;
  break;
 case 133:
  effect->type = FIMC_REG_CIIMGEFF_FIN_EMBOSSING;
  break;
 case 135:
  effect->type = FIMC_REG_CIIMGEFF_FIN_ARTFREEZE;
  break;
 case 128:
  effect->type = FIMC_REG_CIIMGEFF_FIN_SILHOUETTE;
  break;
 case 129:
  effect->type = FIMC_REG_CIIMGEFF_FIN_ARBITRARY;
  effect->pat_cb = ctx->ctrls.colorfx_cbcr->val >> 8;
  effect->pat_cr = ctx->ctrls.colorfx_cbcr->val & 0xff;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
