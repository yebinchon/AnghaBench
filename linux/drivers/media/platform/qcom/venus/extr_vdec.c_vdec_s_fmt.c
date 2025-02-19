
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct venus_inst {struct venus_format const* fmt_cap; struct venus_format const* fmt_out; int height; int width; int input_buf_size; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int out_height; int out_width; } ;
struct venus_format {void* pixfmt; } ;
struct v4l2_pix_format_mplane {int height; int width; void* pixelformat; TYPE_1__* plane_fmt; int xfer_func; int quantization; int ycbcr_enc; int colorspace; } ;
struct TYPE_4__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {scalar_t__ type; TYPE_2__ fmt; } ;
struct file {int dummy; } ;
typedef int format ;
struct TYPE_3__ {int sizeimage; } ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int memset (struct v4l2_format*,int ,int) ;
 struct venus_inst* to_inst (struct file*) ;
 struct venus_format* vdec_try_fmt_common (struct venus_inst*,struct v4l2_format*) ;

__attribute__((used)) static int vdec_s_fmt(struct file *file, void *fh, struct v4l2_format *f)
{
 struct venus_inst *inst = to_inst(file);
 struct v4l2_pix_format_mplane *pixmp = &f->fmt.pix_mp;
 struct v4l2_pix_format_mplane orig_pixmp;
 const struct venus_format *fmt;
 struct v4l2_format format;
 u32 pixfmt_out = 0, pixfmt_cap = 0;

 orig_pixmp = *pixmp;

 fmt = vdec_try_fmt_common(inst, f);

 if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  pixfmt_out = pixmp->pixelformat;
  pixfmt_cap = inst->fmt_cap->pixfmt;
 } else if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
  pixfmt_cap = pixmp->pixelformat;
  pixfmt_out = inst->fmt_out->pixfmt;
 }

 memset(&format, 0, sizeof(format));

 format.type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
 format.fmt.pix_mp.pixelformat = pixfmt_out;
 format.fmt.pix_mp.width = orig_pixmp.width;
 format.fmt.pix_mp.height = orig_pixmp.height;
 vdec_try_fmt_common(inst, &format);

 if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  inst->out_width = format.fmt.pix_mp.width;
  inst->out_height = format.fmt.pix_mp.height;
  inst->colorspace = pixmp->colorspace;
  inst->ycbcr_enc = pixmp->ycbcr_enc;
  inst->quantization = pixmp->quantization;
  inst->xfer_func = pixmp->xfer_func;
  inst->input_buf_size = pixmp->plane_fmt[0].sizeimage;
 }

 memset(&format, 0, sizeof(format));

 format.type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 format.fmt.pix_mp.pixelformat = pixfmt_cap;
 format.fmt.pix_mp.width = orig_pixmp.width;
 format.fmt.pix_mp.height = orig_pixmp.height;
 vdec_try_fmt_common(inst, &format);

 inst->width = format.fmt.pix_mp.width;
 inst->height = format.fmt.pix_mp.height;

 if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  inst->fmt_out = fmt;
 else if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
  inst->fmt_cap = fmt;

 return 0;
}
