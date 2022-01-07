
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_6__ {int height; int width; int pixelformat; int quantization; int ycbcr_enc; int xfer_func; int colorspace; } ;
struct TYPE_7__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; int type; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct coda_ctx {scalar_t__ inst_type; TYPE_1__ fh; struct coda_codec const* codec; TYPE_4__* dev; int quantization; int ycbcr_enc; int xfer_func; int colorspace; } ;
struct coda_codec {int dummy; } ;
typedef int f_cap ;
struct TYPE_8__ {int v4l2_dev; } ;


 scalar_t__ CODA_INST_DECODER ;
 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_PIX_FMT_YUV420 ;
 struct coda_codec* coda_find_codec (TYPE_4__*,int ,int ) ;
 int coda_g_fmt (struct file*,void*,struct v4l2_format*) ;
 int coda_s_fmt (struct coda_ctx*,struct v4l2_format*,int *) ;
 int coda_s_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 int coda_try_fmt_vid_out (struct file*,void*,struct v4l2_format*) ;
 struct coda_ctx* fh_to_ctx (void*) ;
 int memset (struct v4l2_format*,int ,int) ;
 int v4l2_err (int *,char*) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 scalar_t__ vb2_is_busy (struct vb2_queue*) ;

__attribute__((used)) static int coda_s_fmt_vid_out(struct file *file, void *priv,
         struct v4l2_format *f)
{
 struct coda_ctx *ctx = fh_to_ctx(priv);
 const struct coda_codec *codec;
 struct v4l2_format f_cap;
 struct vb2_queue *dst_vq;
 int ret;

 ret = coda_try_fmt_vid_out(file, priv, f);
 if (ret)
  return ret;

 ret = coda_s_fmt(ctx, f, ((void*)0));
 if (ret)
  return ret;

 ctx->colorspace = f->fmt.pix.colorspace;
 ctx->xfer_func = f->fmt.pix.xfer_func;
 ctx->ycbcr_enc = f->fmt.pix.ycbcr_enc;
 ctx->quantization = f->fmt.pix.quantization;

 if (ctx->inst_type != CODA_INST_DECODER)
  return 0;


 codec = coda_find_codec(ctx->dev, f->fmt.pix.pixelformat,
    V4L2_PIX_FMT_YUV420);
 if (!codec) {
  v4l2_err(&ctx->dev->v4l2_dev, "failed to determine codec\n");
  return -EINVAL;
 }
 ctx->codec = codec;

 dst_vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
 if (!dst_vq)
  return -EINVAL;







 if (vb2_is_busy(dst_vq))
  return 0;

 memset(&f_cap, 0, sizeof(f_cap));
 f_cap.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 coda_g_fmt(file, priv, &f_cap);
 f_cap.fmt.pix.width = f->fmt.pix.width;
 f_cap.fmt.pix.height = f->fmt.pix.height;

 return coda_s_fmt_vid_cap(file, priv, &f_cap);
}
