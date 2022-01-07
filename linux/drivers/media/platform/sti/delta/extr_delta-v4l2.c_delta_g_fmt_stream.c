
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int sizeimage; scalar_t__ bytesperline; int field; int height; int width; int pixelformat; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int private_data; } ;
struct delta_streaminfo {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int field; int height; int width; int streamformat; } ;
struct delta_dev {int dev; } ;
struct delta_ctx {int flags; int max_au_size; int name; struct delta_streaminfo streaminfo; struct delta_dev* dev; } ;
typedef int str ;


 int DELTA_FLAG_STREAMINFO ;
 int delta_streaminfo_str (struct delta_streaminfo*,unsigned char*,int) ;
 int dev_dbg (int ,char*,int ,int ) ;
 struct delta_ctx* to_ctx (int ) ;

__attribute__((used)) static int delta_g_fmt_stream(struct file *file, void *fh,
         struct v4l2_format *f)
{
 struct delta_ctx *ctx = to_ctx(file->private_data);
 struct delta_dev *delta = ctx->dev;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 struct delta_streaminfo *streaminfo = &ctx->streaminfo;
 unsigned char str[100] = "";

 if (!(ctx->flags & DELTA_FLAG_STREAMINFO))
  dev_dbg(delta->dev,
   "%s V4L2 GET_FMT (OUTPUT): no stream information available, default to %s\n",
   ctx->name,
   delta_streaminfo_str(streaminfo, str, sizeof(str)));

 pix->pixelformat = streaminfo->streamformat;
 pix->width = streaminfo->width;
 pix->height = streaminfo->height;
 pix->field = streaminfo->field;
 pix->bytesperline = 0;
 pix->sizeimage = ctx->max_au_size;
 pix->colorspace = streaminfo->colorspace;
 pix->xfer_func = streaminfo->xfer_func;
 pix->ycbcr_enc = streaminfo->ycbcr_enc;
 pix->quantization = streaminfo->quantization;

 return 0;
}
