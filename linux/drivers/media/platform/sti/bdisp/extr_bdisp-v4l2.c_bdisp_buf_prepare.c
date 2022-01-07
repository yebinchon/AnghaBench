
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_buffer {TYPE_2__* vb2_queue; } ;
struct bdisp_frame {int sizeimage; } ;
struct bdisp_ctx {TYPE_1__* bdisp_dev; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ IS_ERR (struct bdisp_frame*) ;
 int PTR_ERR (struct bdisp_frame*) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 struct bdisp_frame* ctx_get_frame (struct bdisp_ctx*,int ) ;
 int dev_err (int ,char*,struct bdisp_frame*) ;
 struct bdisp_ctx* vb2_get_drv_priv (TYPE_2__*) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,int ) ;

__attribute__((used)) static int bdisp_buf_prepare(struct vb2_buffer *vb)
{
 struct bdisp_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 struct bdisp_frame *frame = ctx_get_frame(ctx, vb->vb2_queue->type);

 if (IS_ERR(frame)) {
  dev_err(ctx->bdisp_dev->dev, "Invalid frame (%p)\n", frame);
  return PTR_ERR(frame);
 }

 if (vb->vb2_queue->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  vb2_set_plane_payload(vb, 0, frame->sizeimage);

 return 0;
}
