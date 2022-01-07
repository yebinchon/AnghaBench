
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sizeimage; int bytesperline; int pixelformat; int quantization; int ycbcr_enc; int xfer_func; int colorspace; int field; int height; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct hva_frameinfo {int size; int pixelformat; int aligned_width; int height; int width; } ;
struct hva_ctx {int quantization; int ycbcr_enc; int xfer_func; int colorspace; struct hva_frameinfo frameinfo; } ;
struct file {int private_data; } ;


 int V4L2_FIELD_NONE ;
 struct hva_ctx* fh_to_ctx (int ) ;
 int frame_stride (int ,int ) ;

__attribute__((used)) static int hva_g_fmt_frame(struct file *file, void *fh, struct v4l2_format *f)
{
 struct hva_ctx *ctx = fh_to_ctx(file->private_data);
 struct hva_frameinfo *frameinfo = &ctx->frameinfo;

 f->fmt.pix.width = frameinfo->width;
 f->fmt.pix.height = frameinfo->height;
 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.colorspace = ctx->colorspace;
 f->fmt.pix.xfer_func = ctx->xfer_func;
 f->fmt.pix.ycbcr_enc = ctx->ycbcr_enc;
 f->fmt.pix.quantization = ctx->quantization;
 f->fmt.pix.pixelformat = frameinfo->pixelformat;
 f->fmt.pix.bytesperline = frame_stride(frameinfo->aligned_width,
            frameinfo->pixelformat);
 f->fmt.pix.sizeimage = frameinfo->size;

 return 0;
}
