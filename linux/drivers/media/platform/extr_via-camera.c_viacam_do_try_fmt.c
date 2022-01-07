
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_format {int mbus_code; int pixelformat; } ;
struct via_camera {int dummy; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int format; int which; } ;
struct v4l2_pix_format {int pixelformat; } ;


 int V4L2_SUBDEV_FORMAT_TRY ;
 int pad ;
 int sensor_call (struct via_camera*,int ,int ,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 int set_fmt ;
 int v4l2_fill_mbus_format (int *,struct v4l2_pix_format*,int ) ;
 int v4l2_fill_pix_format (struct v4l2_pix_format*,int *) ;
 struct via_format* via_find_format (int ) ;
 int viacam_fmt_post (struct v4l2_pix_format*,struct v4l2_pix_format*) ;
 int viacam_fmt_pre (struct v4l2_pix_format*,struct v4l2_pix_format*) ;

__attribute__((used)) static int viacam_do_try_fmt(struct via_camera *cam,
  struct v4l2_pix_format *upix, struct v4l2_pix_format *spix)
{
 int ret;
 struct v4l2_subdev_pad_config pad_cfg;
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_TRY,
 };
 struct via_format *f = via_find_format(upix->pixelformat);

 upix->pixelformat = f->pixelformat;
 viacam_fmt_pre(upix, spix);
 v4l2_fill_mbus_format(&format.format, spix, f->mbus_code);
 ret = sensor_call(cam, pad, set_fmt, &pad_cfg, &format);
 v4l2_fill_pix_format(spix, &format.format);
 viacam_fmt_post(upix, spix);
 return ret;
}
