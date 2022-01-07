
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct s5k6a3 {int power_count; int lock; } ;


 int __s5k6a3_power_off (struct s5k6a3*) ;
 int __s5k6a3_power_on (struct s5k6a3*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5k6a3* sd_to_s5k6a3 (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k6a3_s_power(struct v4l2_subdev *sd, int on)
{
 struct s5k6a3 *sensor = sd_to_s5k6a3(sd);
 int ret = 0;

 mutex_lock(&sensor->lock);

 if (sensor->power_count == !on) {
  if (on)
   ret = __s5k6a3_power_on(sensor);
  else
   ret = __s5k6a3_power_off(sensor);

  if (ret == 0)
   sensor->power_count += on ? 1 : -1;
 }

 mutex_unlock(&sensor->lock);
 return ret;
}
