
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int sizeimage; int bytesperline; int field; int height; int width; int pixelformat; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int private_data; } ;
struct delta_streaminfo {int quantization; int ycbcr_enc; int xfer_func; int colorspace; } ;
struct delta_frameinfo {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int size; int pixelformat; int aligned_width; int field; int aligned_height; } ;
struct delta_dev {int dev; } ;
struct delta_ctx {int flags; int name; struct delta_streaminfo streaminfo; struct delta_frameinfo frameinfo; struct delta_dev* dev; } ;
typedef int str ;


 int DELTA_FLAG_FRAMEINFO ;
 int DELTA_FLAG_STREAMINFO ;
 int delta_frameinfo_str (struct delta_frameinfo*,unsigned char*,int) ;
 int dev_dbg (int ,char*,int ,int ) ;
 int frame_stride (int ,int ) ;
 struct delta_ctx* to_ctx (int ) ;

__attribute__((used)) static int delta_g_fmt_frame(struct file *file, void *fh, struct v4l2_format *f)
{
 struct delta_ctx *ctx = to_ctx(file->private_data);
 struct delta_dev *delta = ctx->dev;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 struct delta_frameinfo *frameinfo = &ctx->frameinfo;
 struct delta_streaminfo *streaminfo = &ctx->streaminfo;
 unsigned char str[100] = "";

 if (!(ctx->flags & DELTA_FLAG_FRAMEINFO))
  dev_dbg(delta->dev,
   "%s V4L2 GET_FMT (CAPTURE): no frame information available, default to %s\n",
   ctx->name,
   delta_frameinfo_str(frameinfo, str, sizeof(str)));

 pix->pixelformat = frameinfo->pixelformat;
 pix->width = frameinfo->aligned_width;
 pix->height = frameinfo->aligned_height;
 pix->field = frameinfo->field;
 pix->bytesperline = frame_stride(frameinfo->aligned_width,
            frameinfo->pixelformat);
 pix->sizeimage = frameinfo->size;

 if (ctx->flags & DELTA_FLAG_STREAMINFO) {

  frameinfo->colorspace = streaminfo->colorspace;
  frameinfo->xfer_func = streaminfo->xfer_func;
  frameinfo->ycbcr_enc = streaminfo->ycbcr_enc;
  frameinfo->quantization = streaminfo->quantization;
 }
 pix->colorspace = frameinfo->colorspace;
 pix->xfer_func = frameinfo->xfer_func;
 pix->ycbcr_enc = frameinfo->ycbcr_enc;
 pix->quantization = frameinfo->quantization;

 return 0;
}
