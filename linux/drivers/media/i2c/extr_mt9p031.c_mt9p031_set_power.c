
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9p031 {int power_count; int power_lock; } ;


 int WARN_ON (int) ;
 int __mt9p031_set_power (struct mt9p031*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mt9p031* to_mt9p031 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9p031_set_power(struct v4l2_subdev *subdev, int on)
{
 struct mt9p031 *mt9p031 = to_mt9p031(subdev);
 int ret = 0;

 mutex_lock(&mt9p031->power_lock);




 if (mt9p031->power_count == !on) {
  ret = __mt9p031_set_power(mt9p031, !!on);
  if (ret < 0)
   goto out;
 }


 mt9p031->power_count += on ? 1 : -1;
 WARN_ON(mt9p031->power_count < 0);

out:
 mutex_unlock(&mt9p031->power_lock);
 return ret;
}
