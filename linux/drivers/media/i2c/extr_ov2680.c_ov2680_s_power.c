
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int handler; } ;
struct ov2680_dev {TYPE_1__ ctrls; int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov2680_mode_restore (struct ov2680_dev*) ;
 int ov2680_power_off (struct ov2680_dev*) ;
 int ov2680_power_on (struct ov2680_dev*) ;
 struct ov2680_dev* to_ov2680_dev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int ov2680_s_power(struct v4l2_subdev *sd, int on)
{
 struct ov2680_dev *sensor = to_ov2680_dev(sd);
 int ret = 0;

 mutex_lock(&sensor->lock);

 if (on)
  ret = ov2680_power_on(sensor);
 else
  ret = ov2680_power_off(sensor);

 mutex_unlock(&sensor->lock);

 if (on && ret == 0) {
  ret = v4l2_ctrl_handler_setup(&sensor->ctrls.handler);
  if (ret < 0)
   return ret;

  ret = ov2680_mode_restore(sensor);
 }

 return ret;
}
