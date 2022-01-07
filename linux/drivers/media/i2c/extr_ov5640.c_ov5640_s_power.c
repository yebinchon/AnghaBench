
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int handler; } ;
struct ov5640_dev {int power_count; TYPE_1__ ctrls; int lock; } ;


 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov5640_set_power (struct ov5640_dev*,int) ;
 struct ov5640_dev* to_ov5640_dev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int ov5640_s_power(struct v4l2_subdev *sd, int on)
{
 struct ov5640_dev *sensor = to_ov5640_dev(sd);
 int ret = 0;

 mutex_lock(&sensor->lock);





 if (sensor->power_count == !on) {
  ret = ov5640_set_power(sensor, !!on);
  if (ret)
   goto out;
 }


 sensor->power_count += on ? 1 : -1;
 WARN_ON(sensor->power_count < 0);
out:
 mutex_unlock(&sensor->lock);

 if (on && !ret && sensor->power_count == 1) {

  ret = v4l2_ctrl_handler_setup(&sensor->ctrls.handler);
 }

 return ret;
}
