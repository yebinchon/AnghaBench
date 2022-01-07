
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* fmt; } ;
struct TYPE_6__ {TYPE_1__* fmt; } ;
struct fimc_ctx {int out_order_1p; TYPE_4__ d_frame; int in_order_1p; TYPE_2__ s_frame; void* out_order_2p; void* in_order_2p; } ;
struct TYPE_7__ {int color; } ;
struct TYPE_5__ {int color; } ;






 void* FIMC_REG_CIOCTRL_ORDER422_2P_LSB_CRCB ;
 int FIMC_REG_CIOCTRL_ORDER422_CBYCRY ;
 int FIMC_REG_CIOCTRL_ORDER422_CRYCBY ;
 int FIMC_REG_CIOCTRL_ORDER422_YCBYCR ;
 int FIMC_REG_CIOCTRL_ORDER422_YCRYCB ;
 int FIMC_REG_MSCTRL_ORDER422_CBYCRY ;
 int FIMC_REG_MSCTRL_ORDER422_CRYCBY ;
 int FIMC_REG_MSCTRL_ORDER422_YCBYCR ;
 int FIMC_REG_MSCTRL_ORDER422_YCRYCB ;
 int dbg (char*,int ) ;

void fimc_set_yuv_order(struct fimc_ctx *ctx)
{

 ctx->in_order_2p = FIMC_REG_CIOCTRL_ORDER422_2P_LSB_CRCB;
 ctx->out_order_2p = FIMC_REG_CIOCTRL_ORDER422_2P_LSB_CRCB;


 switch (ctx->s_frame.fmt->color) {
 case 128:
  ctx->in_order_1p = FIMC_REG_MSCTRL_ORDER422_YCRYCB;
  break;
 case 131:
  ctx->in_order_1p = FIMC_REG_MSCTRL_ORDER422_CBYCRY;
  break;
 case 130:
  ctx->in_order_1p = FIMC_REG_MSCTRL_ORDER422_CRYCBY;
  break;
 case 129:
 default:
  ctx->in_order_1p = FIMC_REG_MSCTRL_ORDER422_YCBYCR;
  break;
 }
 dbg("ctx->in_order_1p= %d", ctx->in_order_1p);

 switch (ctx->d_frame.fmt->color) {
 case 128:
  ctx->out_order_1p = FIMC_REG_CIOCTRL_ORDER422_YCRYCB;
  break;
 case 131:
  ctx->out_order_1p = FIMC_REG_CIOCTRL_ORDER422_CBYCRY;
  break;
 case 130:
  ctx->out_order_1p = FIMC_REG_CIOCTRL_ORDER422_CRYCBY;
  break;
 case 129:
 default:
  ctx->out_order_1p = FIMC_REG_CIOCTRL_ORDER422_YCBYCR;
  break;
 }
 dbg("ctx->out_order_1p= %d", ctx->out_order_1p);
}
