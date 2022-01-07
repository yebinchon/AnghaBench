
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; int code; int height; int width; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct noon010_info {int lock; TYPE_2__* curr_fmt; TYPE_1__* curr_win; } ;
struct TYPE_4__ {int colorspace; int code; } ;
struct TYPE_3__ {int height; int width; } ;


 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct noon010_info* to_noon010 (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int noon010_get_fmt(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *fmt)
{
 struct noon010_info *info = to_noon010(sd);
 struct v4l2_mbus_framefmt *mf;

 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  if (cfg) {
   mf = v4l2_subdev_get_try_format(sd, cfg, 0);
   fmt->format = *mf;
  }
  return 0;
 }
 mf = &fmt->format;

 mutex_lock(&info->lock);
 mf->width = info->curr_win->width;
 mf->height = info->curr_win->height;
 mf->code = info->curr_fmt->code;
 mf->colorspace = info->curr_fmt->colorspace;
 mf->field = V4L2_FIELD_NONE;

 mutex_unlock(&info->lock);
 return 0;
}
