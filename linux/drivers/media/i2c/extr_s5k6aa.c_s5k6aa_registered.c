
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct s5k6aa {int lock; } ;


 int __s5k6aa_power_off (struct s5k6aa*) ;
 int __s5k6aa_power_on (struct s5k6aa*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s5k6aa_check_fw_revision (struct s5k6aa*) ;
 struct s5k6aa* to_s5k6aa (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k6aa_registered(struct v4l2_subdev *sd)
{
 struct s5k6aa *s5k6aa = to_s5k6aa(sd);
 int ret;

 mutex_lock(&s5k6aa->lock);
 ret = __s5k6aa_power_on(s5k6aa);
 if (!ret) {
  msleep(100);
  ret = s5k6aa_check_fw_revision(s5k6aa);
  __s5k6aa_power_off(s5k6aa);
 }
 mutex_unlock(&s5k6aa->lock);

 return ret;
}
