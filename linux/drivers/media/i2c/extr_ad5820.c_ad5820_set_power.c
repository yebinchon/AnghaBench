
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ad5820_device {int power_count; int power_lock; } ;


 int WARN_ON (int) ;
 int ad5820_power_off (struct ad5820_device*,int) ;
 int ad5820_power_on (struct ad5820_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ad5820_device* to_ad5820_device (struct v4l2_subdev*) ;

__attribute__((used)) static int
ad5820_set_power(struct v4l2_subdev *subdev, int on)
{
 struct ad5820_device *coil = to_ad5820_device(subdev);
 int ret = 0;

 mutex_lock(&coil->power_lock);





 if (coil->power_count == !on) {
  ret = on ? ad5820_power_on(coil, 1) :
   ad5820_power_off(coil, 1);
  if (ret < 0)
   goto done;
 }


 coil->power_count += on ? 1 : -1;
 WARN_ON(coil->power_count < 0);

done:
 mutex_unlock(&coil->power_lock);
 return ret;
}
