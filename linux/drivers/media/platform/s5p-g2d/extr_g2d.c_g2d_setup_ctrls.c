
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct g2d_dev {int v4l2_dev; } ;
struct TYPE_5__ {int error; } ;
struct g2d_ctx {void* ctrl_hflip; TYPE_1__ ctrl_handler; void* ctrl_vflip; struct g2d_dev* dev; } ;


 int V4L2_CID_COLORFX ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_VFLIP ;
 int V4L2_COLORFX_NEGATIVE ;
 int V4L2_COLORFX_NONE ;
 int g2d_ctrl_ops ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_free (TYPE_1__*) ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 void* v4l2_ctrl_new_std (TYPE_1__*,int *,int ,int ,int,int,int ) ;
 int v4l2_ctrl_new_std_menu (TYPE_1__*,int *,int ,int,int,int) ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static int g2d_setup_ctrls(struct g2d_ctx *ctx)
{
 struct g2d_dev *dev = ctx->dev;

 v4l2_ctrl_handler_init(&ctx->ctrl_handler, 3);

 ctx->ctrl_hflip = v4l2_ctrl_new_std(&ctx->ctrl_handler, &g2d_ctrl_ops,
      V4L2_CID_HFLIP, 0, 1, 1, 0);

 ctx->ctrl_vflip = v4l2_ctrl_new_std(&ctx->ctrl_handler, &g2d_ctrl_ops,
      V4L2_CID_VFLIP, 0, 1, 1, 0);

 v4l2_ctrl_new_std_menu(
  &ctx->ctrl_handler,
  &g2d_ctrl_ops,
  V4L2_CID_COLORFX,
  V4L2_COLORFX_NEGATIVE,
  ~((1 << V4L2_COLORFX_NONE) | (1 << V4L2_COLORFX_NEGATIVE)),
  V4L2_COLORFX_NONE);

 if (ctx->ctrl_handler.error) {
  int err = ctx->ctrl_handler.error;
  v4l2_err(&dev->v4l2_dev, "g2d_setup_ctrls failed\n");
  v4l2_ctrl_handler_free(&ctx->ctrl_handler);
  return err;
 }

 v4l2_ctrl_cluster(2, &ctx->ctrl_hflip);

 return 0;
}
