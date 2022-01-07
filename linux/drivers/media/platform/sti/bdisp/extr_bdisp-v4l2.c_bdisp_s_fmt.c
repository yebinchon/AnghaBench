
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct vb2_queue {int dummy; } ;
struct v4l2_pix_format {int colorspace; int field; int sizeimage; int bytesperline; int height; int width; int pixelformat; } ;
struct TYPE_6__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {int type; TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_8__ {scalar_t__ top; scalar_t__ left; int height; int width; } ;
struct bdisp_frame {TYPE_4__ crop; int height; int width; int colorspace; int field; int sizeimage; int bytesperline; int fmt; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct bdisp_ctx {TYPE_3__* bdisp_dev; struct bdisp_frame dst; struct bdisp_frame src; TYPE_1__ fh; } ;
struct TYPE_7__ {int dev; } ;


 int BDISP_DST_FMT ;
 int BDISP_PARAMS ;
 int BDISP_SRC_FMT ;
 int EBUSY ;
 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int bdisp_ctx_state_lock_set (int ,struct bdisp_ctx*) ;
 int bdisp_find_fmt (int ) ;
 int bdisp_try_fmt (struct file*,void*,struct v4l2_format*) ;
 int dev_err (int ,char*,...) ;
 struct bdisp_ctx* fh_to_ctx (void*) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 scalar_t__ vb2_is_streaming (struct vb2_queue*) ;

__attribute__((used)) static int bdisp_s_fmt(struct file *file, void *fh, struct v4l2_format *f)
{
 struct bdisp_ctx *ctx = fh_to_ctx(fh);
 struct vb2_queue *vq;
 struct bdisp_frame *frame;
 struct v4l2_pix_format *pix;
 int ret;
 u32 state;

 ret = bdisp_try_fmt(file, fh, f);
 if (ret) {
  dev_err(ctx->bdisp_dev->dev, "Cannot set format\n");
  return ret;
 }

 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 if (vb2_is_streaming(vq)) {
  dev_err(ctx->bdisp_dev->dev, "queue (%d) busy\n", f->type);
  return -EBUSY;
 }

 frame = (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) ?
   &ctx->src : &ctx->dst;
 pix = &f->fmt.pix;
 frame->fmt = bdisp_find_fmt(pix->pixelformat);
 if (!frame->fmt) {
  dev_err(ctx->bdisp_dev->dev, "Unknown format 0x%x\n",
   pix->pixelformat);
  return -EINVAL;
 }

 frame->width = pix->width;
 frame->height = pix->height;
 frame->bytesperline = pix->bytesperline;
 frame->sizeimage = pix->sizeimage;
 frame->field = pix->field;
 if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
  frame->colorspace = pix->colorspace;

 frame->crop.width = frame->width;
 frame->crop.height = frame->height;
 frame->crop.left = 0;
 frame->crop.top = 0;

 state = BDISP_PARAMS;
 state |= (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) ?
   BDISP_DST_FMT : BDISP_SRC_FMT;
 bdisp_ctx_state_lock_set(state, ctx);

 return 0;
}
