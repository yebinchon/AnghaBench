
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adp1653_flash {int power_count; int power_lock; } ;


 int WARN_ON (int) ;
 int __adp1653_set_power (struct adp1653_flash*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct adp1653_flash* to_adp1653_flash (struct v4l2_subdev*) ;

__attribute__((used)) static int
adp1653_set_power(struct v4l2_subdev *subdev, int on)
{
 struct adp1653_flash *flash = to_adp1653_flash(subdev);
 int ret = 0;

 mutex_lock(&flash->power_lock);




 if (flash->power_count == !on) {
  ret = __adp1653_set_power(flash, !!on);
  if (ret < 0)
   goto done;
 }


 flash->power_count += on ? 1 : -1;
 WARN_ON(flash->power_count < 0);

done:
 mutex_unlock(&flash->power_lock);
 return ret;
}
