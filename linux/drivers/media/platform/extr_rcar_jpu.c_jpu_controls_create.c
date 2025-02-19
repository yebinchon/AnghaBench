
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_ctrl {int flags; } ;
struct TYPE_5__ {int error; } ;
struct jpu_ctx {TYPE_1__ ctrl_handler; int encoder; } ;


 scalar_t__ JPU_MAX_QUALITY ;
 int V4L2_CID_JPEG_COMPRESSION_QUALITY ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int jpu_ctrl_ops ;
 int v4l2_ctrl_handler_free (TYPE_1__*) ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_1__*) ;
 struct v4l2_ctrl* v4l2_ctrl_new_std (TYPE_1__*,int *,int ,int ,scalar_t__,int,int ) ;

__attribute__((used)) static int jpu_controls_create(struct jpu_ctx *ctx)
{
 struct v4l2_ctrl *ctrl;
 int ret;

 v4l2_ctrl_handler_init(&ctx->ctrl_handler, 1);

 ctrl = v4l2_ctrl_new_std(&ctx->ctrl_handler, &jpu_ctrl_ops,
     V4L2_CID_JPEG_COMPRESSION_QUALITY,
     0, JPU_MAX_QUALITY - 1, 1, 0);

 if (ctx->ctrl_handler.error) {
  ret = ctx->ctrl_handler.error;
  goto error_free;
 }

 if (!ctx->encoder)
  ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE |
    V4L2_CTRL_FLAG_READ_ONLY;

 ret = v4l2_ctrl_handler_setup(&ctx->ctrl_handler);
 if (ret < 0)
  goto error_free;

 return 0;

error_free:
 v4l2_ctrl_handler_free(&ctx->ctrl_handler);
 return ret;
}
