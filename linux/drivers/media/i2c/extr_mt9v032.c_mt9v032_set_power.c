
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9v032 {int power_count; int power_lock; } ;


 int WARN_ON (int) ;
 int __mt9v032_set_power (struct mt9v032*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mt9v032* to_mt9v032 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v032_set_power(struct v4l2_subdev *subdev, int on)
{
 struct mt9v032 *mt9v032 = to_mt9v032(subdev);
 int ret = 0;

 mutex_lock(&mt9v032->power_lock);




 if (mt9v032->power_count == !on) {
  ret = __mt9v032_set_power(mt9v032, !!on);
  if (ret < 0)
   goto done;
 }


 mt9v032->power_count += on ? 1 : -1;
 WARN_ON(mt9v032->power_count < 0);

done:
 mutex_unlock(&mt9v032->power_lock);
 return ret;
}
