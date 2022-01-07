
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {int which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct et8ek8_sensor {struct et8ek8_reglist* current_reglist; } ;
struct et8ek8_reglist {int dummy; } ;


 int EINVAL ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct v4l2_mbus_framefmt* __et8ek8_get_pad_format (struct et8ek8_sensor*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct et8ek8_reglist* et8ek8_reglist_find_mode_fmt (int *,struct v4l2_mbus_framefmt*) ;
 int et8ek8_reglist_to_mbus (struct et8ek8_reglist*,struct v4l2_mbus_framefmt*) ;
 int et8ek8_update_controls (struct et8ek8_sensor*) ;
 int meta_reglist ;
 struct et8ek8_sensor* to_et8ek8_sensor (struct v4l2_subdev*) ;

__attribute__((used)) static int et8ek8_set_pad_format(struct v4l2_subdev *subdev,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct et8ek8_sensor *sensor = to_et8ek8_sensor(subdev);
 struct v4l2_mbus_framefmt *format;
 struct et8ek8_reglist *reglist;

 format = __et8ek8_get_pad_format(sensor, cfg, fmt->pad, fmt->which);
 if (!format)
  return -EINVAL;

 reglist = et8ek8_reglist_find_mode_fmt(&meta_reglist, &fmt->format);
 et8ek8_reglist_to_mbus(reglist, &fmt->format);
 *format = fmt->format;

 if (fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
  sensor->current_reglist = reglist;
  et8ek8_update_controls(sensor);
 }

 return 0;
}
