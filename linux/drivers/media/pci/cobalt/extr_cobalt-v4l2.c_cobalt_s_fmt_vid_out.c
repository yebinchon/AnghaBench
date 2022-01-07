
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev_format {int format; int which; int member_0; } ;
struct v4l2_pix_format {int pixelformat; scalar_t__ width; scalar_t__ height; scalar_t__ bytesperline; int quantization; int ycbcr_enc; int xfer_func; int colorspace; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cobalt_stream {int pixfmt; scalar_t__ width; scalar_t__ height; scalar_t__ stride; int sd; int quantization; int ycbcr_enc; int xfer_func; int colorspace; int bpp; int q; } ;


 int COBALT_BYTES_PER_PIXEL_RGB32 ;
 int COBALT_BYTES_PER_PIXEL_YUYV ;
 int EBUSY ;
 int EINVAL ;
 int MEDIA_BUS_FMT_RGB888_1X24 ;
 int MEDIA_BUS_FMT_UYVY8_1X16 ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 scalar_t__ cobalt_try_fmt_vid_out (struct file*,void*,struct v4l2_format*) ;
 int pad ;
 int set_fmt ;
 int v4l2_fill_mbus_format (int *,struct v4l2_pix_format*,int ) ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_format*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct cobalt_stream* video_drvdata (struct file*) ;

__attribute__((used)) static int cobalt_s_fmt_vid_out(struct file *file, void *priv_fh,
  struct v4l2_format *f)
{
 struct cobalt_stream *s = video_drvdata(file);
 struct v4l2_pix_format *pix = &f->fmt.pix;
 struct v4l2_subdev_format sd_fmt = { 0 };
 u32 code;

 if (cobalt_try_fmt_vid_out(file, priv_fh, f))
  return -EINVAL;

 if (vb2_is_busy(&s->q) && (pix->pixelformat != s->pixfmt ||
     pix->width != s->width || pix->height != s->height ||
     pix->bytesperline != s->stride))
  return -EBUSY;

 switch (pix->pixelformat) {
 case 128:
  s->bpp = COBALT_BYTES_PER_PIXEL_YUYV;
  code = MEDIA_BUS_FMT_UYVY8_1X16;
  break;
 case 129:
  s->bpp = COBALT_BYTES_PER_PIXEL_RGB32;
  code = MEDIA_BUS_FMT_RGB888_1X24;
  break;
 default:
  return -EINVAL;
 }
 s->width = pix->width;
 s->height = pix->height;
 s->stride = pix->bytesperline;
 s->pixfmt = pix->pixelformat;
 s->colorspace = pix->colorspace;
 s->xfer_func = pix->xfer_func;
 s->ycbcr_enc = pix->ycbcr_enc;
 s->quantization = pix->quantization;
 sd_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
 v4l2_fill_mbus_format(&sd_fmt.format, pix, code);
 v4l2_subdev_call(s->sd, pad, set_fmt, ((void*)0), &sd_fmt);
 return 0;
}
