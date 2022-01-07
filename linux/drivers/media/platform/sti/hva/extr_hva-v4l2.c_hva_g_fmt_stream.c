
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sizeimage; scalar_t__ bytesperline; int pixelformat; int quantization; int ycbcr_enc; int xfer_func; int colorspace; int field; int height; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct hva_streaminfo {int streamformat; int height; int width; } ;
struct hva_ctx {int max_stream_size; int quantization; int ycbcr_enc; int xfer_func; int colorspace; struct hva_streaminfo streaminfo; } ;
struct file {int private_data; } ;


 int V4L2_FIELD_NONE ;
 struct hva_ctx* fh_to_ctx (int ) ;

__attribute__((used)) static int hva_g_fmt_stream(struct file *file, void *fh, struct v4l2_format *f)
{
 struct hva_ctx *ctx = fh_to_ctx(file->private_data);
 struct hva_streaminfo *streaminfo = &ctx->streaminfo;

 f->fmt.pix.width = streaminfo->width;
 f->fmt.pix.height = streaminfo->height;
 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.colorspace = ctx->colorspace;
 f->fmt.pix.xfer_func = ctx->xfer_func;
 f->fmt.pix.ycbcr_enc = ctx->ycbcr_enc;
 f->fmt.pix.quantization = ctx->quantization;
 f->fmt.pix.pixelformat = streaminfo->streamformat;
 f->fmt.pix.bytesperline = 0;
 f->fmt.pix.sizeimage = ctx->max_stream_size;

 return 0;
}
