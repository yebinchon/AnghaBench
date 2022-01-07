
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int format; int which; } ;
struct v4l2_pix_format {int pixelformat; int bytesperline; int width; int sizeimage; int height; int colorspace; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct mcam_format_struct {int pixelformat; int bpp; int mbus_code; } ;
struct mcam_camera {int dummy; } ;
struct file {int dummy; } ;


 int V4L2_COLORSPACE_SRGB ;


 int V4L2_SUBDEV_FORMAT_TRY ;
 struct mcam_format_struct* mcam_find_format (int) ;
 int pad ;
 int sensor_call (struct mcam_camera*,int ,int ,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 int set_fmt ;
 int v4l2_fill_mbus_format (int *,struct v4l2_pix_format*,int ) ;
 int v4l2_fill_pix_format (struct v4l2_pix_format*,int *) ;
 struct mcam_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int mcam_vidioc_try_fmt_vid_cap(struct file *filp, void *priv,
  struct v4l2_format *fmt)
{
 struct mcam_camera *cam = video_drvdata(filp);
 struct mcam_format_struct *f;
 struct v4l2_pix_format *pix = &fmt->fmt.pix;
 struct v4l2_subdev_pad_config pad_cfg;
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_TRY,
 };
 int ret;

 f = mcam_find_format(pix->pixelformat);
 pix->pixelformat = f->pixelformat;
 v4l2_fill_mbus_format(&format.format, pix, f->mbus_code);
 ret = sensor_call(cam, pad, set_fmt, &pad_cfg, &format);
 v4l2_fill_pix_format(pix, &format.format);
 pix->bytesperline = pix->width * f->bpp;
 switch (f->pixelformat) {
 case 129:
 case 128:
  pix->sizeimage = pix->height * pix->bytesperline * 3 / 2;
  break;
 default:
  pix->sizeimage = pix->height * pix->bytesperline;
  break;
 }
 pix->colorspace = V4L2_COLORSPACE_SRGB;
 return ret;
}
