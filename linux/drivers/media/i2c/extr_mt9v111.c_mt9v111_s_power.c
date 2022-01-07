
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9v111_dev {int pwr_count; int pwr_mutex; } ;


 int WARN_ON (int) ;
 int __mt9v111_power_off (struct v4l2_subdev*) ;
 int __mt9v111_power_on (struct v4l2_subdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mt9v111_dev* sd_to_mt9v111 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v111_s_power(struct v4l2_subdev *sd, int on)
{
 struct mt9v111_dev *mt9v111 = sd_to_mt9v111(sd);
 int pwr_count;
 int ret = 0;

 mutex_lock(&mt9v111->pwr_mutex);





 pwr_count = mt9v111->pwr_count;
 pwr_count += on ? 1 : -1;
 if (pwr_count == !!on) {
  ret = on ? __mt9v111_power_on(sd) :
      __mt9v111_power_off(sd);
  if (!ret)

   mt9v111->pwr_count = pwr_count;

  mutex_unlock(&mt9v111->pwr_mutex);

  return ret;
 }





 WARN_ON(pwr_count < 0 || pwr_count > 1);
 mt9v111->pwr_count = pwr_count;

 mutex_unlock(&mt9v111->pwr_mutex);

 return ret;
}
