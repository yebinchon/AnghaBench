
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct et8ek8_sensor {int power_count; int power_lock; } ;


 int WARN_ON (int) ;
 int __et8ek8_set_power (struct et8ek8_sensor*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct et8ek8_sensor* to_et8ek8_sensor (struct v4l2_subdev*) ;

__attribute__((used)) static int et8ek8_set_power(struct v4l2_subdev *subdev, int on)
{
 struct et8ek8_sensor *sensor = to_et8ek8_sensor(subdev);
 int ret = 0;

 mutex_lock(&sensor->power_lock);




 if (sensor->power_count == !on) {
  ret = __et8ek8_set_power(sensor, !!on);
  if (ret < 0)
   goto done;
 }


 sensor->power_count += on ? 1 : -1;
 WARN_ON(sensor->power_count < 0);

done:
 mutex_unlock(&sensor->power_lock);

 return ret;
}
