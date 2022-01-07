
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_frame_interval {int interval; } ;
struct v4l2_subdev {int dummy; } ;
struct et8ek8_sensor {struct et8ek8_reglist* current_reglist; } ;
struct TYPE_2__ {scalar_t__ ext_clock; } ;
struct et8ek8_reglist {TYPE_1__ mode; } ;


 int EINVAL ;
 struct et8ek8_reglist* et8ek8_reglist_find_mode_ival (int *,struct et8ek8_reglist*,int *) ;
 int et8ek8_update_controls (struct et8ek8_sensor*) ;
 int meta_reglist ;
 struct et8ek8_sensor* to_et8ek8_sensor (struct v4l2_subdev*) ;

__attribute__((used)) static int et8ek8_set_frame_interval(struct v4l2_subdev *subdev,
         struct v4l2_subdev_frame_interval *fi)
{
 struct et8ek8_sensor *sensor = to_et8ek8_sensor(subdev);
 struct et8ek8_reglist *reglist;

 reglist = et8ek8_reglist_find_mode_ival(&meta_reglist,
      sensor->current_reglist,
      &fi->interval);

 if (!reglist)
  return -EINVAL;

 if (sensor->current_reglist->mode.ext_clock != reglist->mode.ext_clock)
  return -EINVAL;

 sensor->current_reglist = reglist;
 et8ek8_update_controls(sensor);

 return 0;
}
