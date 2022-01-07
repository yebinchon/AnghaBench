
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct v4l2_pix_format {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int field; int sizeimage; scalar_t__ pixelformat; int width; int bytesperline; int height; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {int type; TYPE_1__ fmt; } ;
struct file {int private_data; } ;
struct delta_frameinfo {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int field; int size; int aligned_height; int aligned_width; scalar_t__ pixelformat; int height; int width; } ;
struct delta_dev {int dev; } ;
struct delta_dec {int dummy; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct delta_ctx {scalar_t__ state; int name; struct delta_frameinfo frameinfo; int flags; TYPE_2__ fh; struct delta_dec* dec; struct delta_dev* dev; } ;
typedef int str ;
typedef int frameinfo ;


 int DELTA_FLAG_FRAMEINFO ;
 scalar_t__ DELTA_STATE_READY ;
 int EBUSY ;
 int call_dec_op (struct delta_dec const*,int ,struct delta_ctx*,struct delta_frameinfo*) ;
 char* delta_frameinfo_str (struct delta_frameinfo*,unsigned char*,int) ;
 int delta_try_fmt_frame (struct file*,void*,struct v4l2_format*) ;
 int dev_dbg (int ,char*,int ,...) ;
 int frame_stride (int ,scalar_t__) ;
 int get_frameinfo ;
 int memset (struct delta_frameinfo*,int ,int) ;
 int set_frameinfo ;
 struct delta_ctx* to_ctx (int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 scalar_t__ vb2_is_streaming (struct vb2_queue*) ;

__attribute__((used)) static int delta_s_fmt_frame(struct file *file, void *fh, struct v4l2_format *f)
{
 struct delta_ctx *ctx = to_ctx(file->private_data);
 struct delta_dev *delta = ctx->dev;
 const struct delta_dec *dec = ctx->dec;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 struct delta_frameinfo frameinfo;
 unsigned char str[100] = "";
 struct vb2_queue *vq;
 int ret;

 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 if (vb2_is_streaming(vq)) {
  dev_dbg(delta->dev, "%s V4L2 S_FMT (CAPTURE): queue busy\n",
   ctx->name);
  return -EBUSY;
 }

 if (ctx->state < DELTA_STATE_READY) {






  ret = delta_try_fmt_frame(file, fh, f);
  if (ret) {
   dev_dbg(delta->dev,
    "%s V4L2 S_FMT (CAPTURE): unsupported format %4.4s\n",
    ctx->name, (char *)&pix->pixelformat);
   return ret;
  }

  return 0;
 }


 memset(&frameinfo, 0, sizeof(frameinfo));
 frameinfo.pixelformat = pix->pixelformat;
 frameinfo.width = pix->width;
 frameinfo.height = pix->height;
 frameinfo.aligned_width = pix->width;
 frameinfo.aligned_height = pix->height;
 frameinfo.size = pix->sizeimage;
 frameinfo.field = pix->field;
 frameinfo.colorspace = pix->colorspace;
 frameinfo.xfer_func = pix->xfer_func;
 frameinfo.ycbcr_enc = pix->ycbcr_enc;
 frameinfo.quantization = pix->quantization;
 ret = call_dec_op(dec, set_frameinfo, ctx, &frameinfo);
 if (ret)
  return ret;


 ret = call_dec_op(dec, get_frameinfo, ctx, &frameinfo);
 if (ret)
  return ret;

 ctx->flags |= DELTA_FLAG_FRAMEINFO;
 ctx->frameinfo = frameinfo;
 dev_dbg(delta->dev,
  "%s V4L2 SET_FMT (CAPTURE): frameinfo updated to %s\n",
  ctx->name,
  delta_frameinfo_str(&frameinfo, str, sizeof(str)));

 pix->pixelformat = frameinfo.pixelformat;
 pix->width = frameinfo.aligned_width;
 pix->height = frameinfo.aligned_height;
 pix->bytesperline = frame_stride(pix->width, pix->pixelformat);
 pix->sizeimage = frameinfo.size;
 pix->field = frameinfo.field;
 pix->colorspace = frameinfo.colorspace;
 pix->xfer_func = frameinfo.xfer_func;
 pix->ycbcr_enc = frameinfo.ycbcr_enc;
 pix->quantization = frameinfo.quantization;

 return 0;
}
