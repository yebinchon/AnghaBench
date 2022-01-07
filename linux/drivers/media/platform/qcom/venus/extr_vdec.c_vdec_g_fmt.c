
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_inst {int out_height; int out_width; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int height; int width; struct venus_format* fmt_out; struct venus_format* fmt_cap; } ;
struct venus_format {int pixfmt; } ;
struct v4l2_pix_format_mplane {int height; int width; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int pixelformat; } ;
struct TYPE_2__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct file {int dummy; } ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 struct venus_inst* to_inst (struct file*) ;
 int vdec_check_src_change (struct venus_inst*) ;
 int vdec_try_fmt_common (struct venus_inst*,struct v4l2_format*) ;

__attribute__((used)) static int vdec_g_fmt(struct file *file, void *fh, struct v4l2_format *f)
{
 struct venus_inst *inst = to_inst(file);
 const struct venus_format *fmt = ((void*)0);
 struct v4l2_pix_format_mplane *pixmp = &f->fmt.pix_mp;
 int ret;

 if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
  fmt = inst->fmt_cap;
 else if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  fmt = inst->fmt_out;

 if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
  ret = vdec_check_src_change(inst);
  if (ret)
   return ret;
 }

 pixmp->pixelformat = fmt->pixfmt;

 if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
  pixmp->width = inst->width;
  pixmp->height = inst->height;
  pixmp->colorspace = inst->colorspace;
  pixmp->ycbcr_enc = inst->ycbcr_enc;
  pixmp->quantization = inst->quantization;
  pixmp->xfer_func = inst->xfer_func;
 } else if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  pixmp->width = inst->out_width;
  pixmp->height = inst->out_height;
 }

 vdec_try_fmt_common(inst, f);

 return 0;
}
