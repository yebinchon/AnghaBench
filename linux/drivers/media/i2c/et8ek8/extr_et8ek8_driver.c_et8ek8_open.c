
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct et8ek8_sensor {int dummy; } ;
struct et8ek8_reglist {int dummy; } ;


 int ET8EK8_REGLIST_MODE ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 struct v4l2_mbus_framefmt* __et8ek8_get_pad_format (struct et8ek8_sensor*,int ,int ,int ) ;
 struct et8ek8_reglist* et8ek8_reglist_find_type (int *,int ) ;
 int et8ek8_reglist_to_mbus (struct et8ek8_reglist*,struct v4l2_mbus_framefmt*) ;
 int et8ek8_set_power (struct v4l2_subdev*,int) ;
 int meta_reglist ;
 struct et8ek8_sensor* to_et8ek8_sensor (struct v4l2_subdev*) ;

__attribute__((used)) static int et8ek8_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 struct et8ek8_sensor *sensor = to_et8ek8_sensor(sd);
 struct v4l2_mbus_framefmt *format;
 struct et8ek8_reglist *reglist;

 reglist = et8ek8_reglist_find_type(&meta_reglist, ET8EK8_REGLIST_MODE);
 format = __et8ek8_get_pad_format(sensor, fh->pad, 0,
      V4L2_SUBDEV_FORMAT_TRY);
 et8ek8_reglist_to_mbus(reglist, format);

 return et8ek8_set_power(sd, 1);
}
