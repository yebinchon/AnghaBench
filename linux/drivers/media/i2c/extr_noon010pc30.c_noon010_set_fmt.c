
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct noon010_info {int apply_new_cfg; int lock; struct noon010_frmsize const* curr_win; struct noon010_format const* curr_fmt; int streaming; } ;
struct noon010_frmsize {int dummy; } ;
struct noon010_format {int dummy; } ;


 int EBUSY ;
 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct noon010_format* noon010_try_fmt (struct v4l2_subdev*,struct v4l2_mbus_framefmt*) ;
 int noon010_try_frame_size (struct v4l2_mbus_framefmt*,struct noon010_frmsize const**) ;
 struct noon010_info* to_noon010 (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int noon010_set_fmt(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *fmt)
{
 struct noon010_info *info = to_noon010(sd);
 const struct noon010_frmsize *size = ((void*)0);
 const struct noon010_format *nf;
 struct v4l2_mbus_framefmt *mf;
 int ret = 0;

 nf = noon010_try_fmt(sd, &fmt->format);
 noon010_try_frame_size(&fmt->format, &size);
 fmt->format.colorspace = V4L2_COLORSPACE_JPEG;
 fmt->format.field = V4L2_FIELD_NONE;

 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  if (cfg) {
   mf = v4l2_subdev_get_try_format(sd, cfg, 0);
   *mf = fmt->format;
  }
  return 0;
 }
 mutex_lock(&info->lock);
 if (!info->streaming) {
  info->apply_new_cfg = 1;
  info->curr_fmt = nf;
  info->curr_win = size;
 } else {
  ret = -EBUSY;
 }
 mutex_unlock(&info->lock);
 return ret;
}
