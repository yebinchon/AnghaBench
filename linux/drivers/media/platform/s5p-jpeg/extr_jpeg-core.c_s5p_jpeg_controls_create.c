
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct v4l2_ctrl {int flags; } ;
struct TYPE_10__ {int error; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; TYPE_3__ ctrl_handler; TYPE_2__* jpeg; } ;
struct TYPE_9__ {TYPE_1__* variant; } ;
struct TYPE_8__ {scalar_t__ version; } ;


 int S5P_JPEG_COMPR_QUAL_WORST ;
 scalar_t__ S5P_JPEG_DECODE ;
 scalar_t__ S5P_JPEG_ENCODE ;
 scalar_t__ SJPEG_S5P ;
 int V4L2_CID_JPEG_CHROMA_SUBSAMPLING ;
 int V4L2_CID_JPEG_COMPRESSION_QUALITY ;
 int V4L2_CID_JPEG_RESTART_INTERVAL ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int V4L2_JPEG_CHROMA_SUBSAMPLING_422 ;
 int V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY ;
 int s5p_jpeg_ctrl_ops ;
 int v4l2_ctrl_handler_free (TYPE_3__*) ;
 int v4l2_ctrl_handler_init (TYPE_3__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_3__*) ;
 int v4l2_ctrl_new_std (TYPE_3__*,int *,int ,int ,int,int,int ) ;
 struct v4l2_ctrl* v4l2_ctrl_new_std_menu (TYPE_3__*,int *,int ,int ,unsigned int,int ) ;

__attribute__((used)) static int s5p_jpeg_controls_create(struct s5p_jpeg_ctx *ctx)
{
 unsigned int mask = ~0x27;
 struct v4l2_ctrl *ctrl;
 int ret;

 v4l2_ctrl_handler_init(&ctx->ctrl_handler, 3);

 if (ctx->mode == S5P_JPEG_ENCODE) {
  v4l2_ctrl_new_std(&ctx->ctrl_handler, &s5p_jpeg_ctrl_ops,
      V4L2_CID_JPEG_COMPRESSION_QUALITY,
      0, 3, 1, S5P_JPEG_COMPR_QUAL_WORST);

  v4l2_ctrl_new_std(&ctx->ctrl_handler, &s5p_jpeg_ctrl_ops,
      V4L2_CID_JPEG_RESTART_INTERVAL,
      0, 0xffff, 1, 0);
  if (ctx->jpeg->variant->version == SJPEG_S5P)
   mask = ~0x06;
 }

 ctrl = v4l2_ctrl_new_std_menu(&ctx->ctrl_handler, &s5p_jpeg_ctrl_ops,
          V4L2_CID_JPEG_CHROMA_SUBSAMPLING,
          V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY, mask,
          V4L2_JPEG_CHROMA_SUBSAMPLING_422);

 if (ctx->ctrl_handler.error) {
  ret = ctx->ctrl_handler.error;
  goto error_free;
 }

 if (ctx->mode == S5P_JPEG_DECODE)
  ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE |
   V4L2_CTRL_FLAG_READ_ONLY;

 ret = v4l2_ctrl_handler_setup(&ctx->ctrl_handler);
 if (ret < 0)
  goto error_free;

 return ret;

error_free:
 v4l2_ctrl_handler_free(&ctx->ctrl_handler);
 return ret;
}
