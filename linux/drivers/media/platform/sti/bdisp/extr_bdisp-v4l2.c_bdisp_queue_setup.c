
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int type; } ;
struct device {int dummy; } ;
struct bdisp_frame {unsigned int sizeimage; int fmt; } ;
struct bdisp_ctx {TYPE_1__* bdisp_dev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct bdisp_frame*) ;
 int PTR_ERR (struct bdisp_frame*) ;
 struct bdisp_frame* ctx_get_frame (struct bdisp_ctx*,int ) ;
 int dev_err (int ,char*,...) ;
 struct bdisp_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int bdisp_queue_setup(struct vb2_queue *vq,
        unsigned int *nb_buf, unsigned int *nb_planes,
        unsigned int sizes[], struct device *alloc_devs[])
{
 struct bdisp_ctx *ctx = vb2_get_drv_priv(vq);
 struct bdisp_frame *frame = ctx_get_frame(ctx, vq->type);

 if (IS_ERR(frame)) {
  dev_err(ctx->bdisp_dev->dev, "Invalid frame (%p)\n", frame);
  return PTR_ERR(frame);
 }

 if (!frame->fmt) {
  dev_err(ctx->bdisp_dev->dev, "Invalid format\n");
  return -EINVAL;
 }

 if (*nb_planes)
  return sizes[0] < frame->sizeimage ? -EINVAL : 0;

 *nb_planes = 1;
 sizes[0] = frame->sizeimage;

 return 0;
}
