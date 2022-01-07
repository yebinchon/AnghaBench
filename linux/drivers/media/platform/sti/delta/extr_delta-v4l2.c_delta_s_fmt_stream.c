
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct v4l2_pix_format {int quantization; int ycbcr_enc; int xfer_func; int colorspace; scalar_t__ pixelformat; int height; int width; int sizeimage; } ;
struct TYPE_4__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {int type; TYPE_1__ fmt; } ;
struct file {int private_data; } ;
struct delta_dev {int dev; } ;
struct TYPE_6__ {int quantization; int ycbcr_enc; int xfer_func; int colorspace; scalar_t__ streamformat; int height; int width; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct delta_ctx {int flags; TYPE_3__ streaminfo; int max_au_size; int name; TYPE_2__ fh; struct delta_dev* dev; } ;


 int DELTA_FLAG_STREAMINFO ;
 int EBUSY ;
 int delta_try_fmt_stream (struct file*,void*,struct v4l2_format*) ;
 int dev_dbg (int ,char*,int ,...) ;
 struct delta_ctx* to_ctx (int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 scalar_t__ vb2_is_streaming (struct vb2_queue*) ;

__attribute__((used)) static int delta_s_fmt_stream(struct file *file, void *fh,
         struct v4l2_format *f)
{
 struct delta_ctx *ctx = to_ctx(file->private_data);
 struct delta_dev *delta = ctx->dev;
 struct vb2_queue *vq;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 int ret;

 ret = delta_try_fmt_stream(file, fh, f);
 if (ret) {
  dev_dbg(delta->dev,
   "%s V4L2 S_FMT (OUTPUT): unsupported format %4.4s\n",
   ctx->name, (char *)&pix->pixelformat);
  return ret;
 }

 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 if (vb2_is_streaming(vq)) {
  dev_dbg(delta->dev, "%s V4L2 S_FMT (OUTPUT): queue busy\n",
   ctx->name);
  return -EBUSY;
 }

 ctx->max_au_size = pix->sizeimage;
 ctx->streaminfo.width = pix->width;
 ctx->streaminfo.height = pix->height;
 ctx->streaminfo.streamformat = pix->pixelformat;
 ctx->streaminfo.colorspace = pix->colorspace;
 ctx->streaminfo.xfer_func = pix->xfer_func;
 ctx->streaminfo.ycbcr_enc = pix->ycbcr_enc;
 ctx->streaminfo.quantization = pix->quantization;
 ctx->flags |= DELTA_FLAG_STREAMINFO;

 return 0;
}
