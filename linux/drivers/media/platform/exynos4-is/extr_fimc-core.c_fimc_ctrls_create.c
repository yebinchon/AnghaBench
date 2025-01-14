
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct TYPE_8__ {int type; } ;
struct fimc_ctrls {int ready; int colorfx; void* colorfx_cbcr; int * alpha; void* vflip; void* hflip; void* rotate; struct v4l2_ctrl_handler handler; } ;
struct TYPE_5__ {int fmt; } ;
struct fimc_ctx {TYPE_4__ effect; TYPE_3__* fimc_dev; struct fimc_ctrls ctrls; TYPE_1__ d_frame; } ;
struct TYPE_7__ {TYPE_2__* drv_data; } ;
struct TYPE_6__ {scalar_t__ alpha_color; } ;


 int FIMC_REG_CIIMGEFF_FIN_BYPASS ;
 int V4L2_CID_ALPHA_COMPONENT ;
 int V4L2_CID_COLORFX ;
 int V4L2_CID_COLORFX_CBCR ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_ROTATE ;
 int V4L2_CID_VFLIP ;
 int V4L2_COLORFX_NONE ;
 int V4L2_COLORFX_SET_CBCR ;
 int fimc_ctrl_ops ;
 unsigned int fimc_get_alpha_mask (int ) ;
 int v4l2_ctrl_cluster (int,int *) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int ) ;
 int v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int,int ) ;

int fimc_ctrls_create(struct fimc_ctx *ctx)
{
 unsigned int max_alpha = fimc_get_alpha_mask(ctx->d_frame.fmt);
 struct fimc_ctrls *ctrls = &ctx->ctrls;
 struct v4l2_ctrl_handler *handler = &ctrls->handler;

 if (ctx->ctrls.ready)
  return 0;

 v4l2_ctrl_handler_init(handler, 6);

 ctrls->rotate = v4l2_ctrl_new_std(handler, &fimc_ctrl_ops,
     V4L2_CID_ROTATE, 0, 270, 90, 0);
 ctrls->hflip = v4l2_ctrl_new_std(handler, &fimc_ctrl_ops,
     V4L2_CID_HFLIP, 0, 1, 1, 0);
 ctrls->vflip = v4l2_ctrl_new_std(handler, &fimc_ctrl_ops,
     V4L2_CID_VFLIP, 0, 1, 1, 0);

 if (ctx->fimc_dev->drv_data->alpha_color)
  ctrls->alpha = v4l2_ctrl_new_std(handler, &fimc_ctrl_ops,
     V4L2_CID_ALPHA_COMPONENT,
     0, max_alpha, 1, 0);
 else
  ctrls->alpha = ((void*)0);

 ctrls->colorfx = v4l2_ctrl_new_std_menu(handler, &fimc_ctrl_ops,
    V4L2_CID_COLORFX, V4L2_COLORFX_SET_CBCR,
    ~0x983f, V4L2_COLORFX_NONE);

 ctrls->colorfx_cbcr = v4l2_ctrl_new_std(handler, &fimc_ctrl_ops,
    V4L2_CID_COLORFX_CBCR, 0, 0xffff, 1, 0);

 ctx->effect.type = FIMC_REG_CIIMGEFF_FIN_BYPASS;

 if (!handler->error) {
  v4l2_ctrl_cluster(2, &ctrls->colorfx);
  ctrls->ready = 1;
 }

 return handler->error;
}
