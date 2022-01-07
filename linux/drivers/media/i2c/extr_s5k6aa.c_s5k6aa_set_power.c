
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int ctrl_handler; } ;
struct s5k6aa {int power; int lock; } ;


 int __s5k6aa_power_off (struct s5k6aa*) ;
 int __s5k6aa_power_on (struct s5k6aa*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s5k6aa_initialize_isp (struct v4l2_subdev*) ;
 struct s5k6aa* to_s5k6aa (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_setup (int ) ;

__attribute__((used)) static int s5k6aa_set_power(struct v4l2_subdev *sd, int on)
{
 struct s5k6aa *s5k6aa = to_s5k6aa(sd);
 int ret = 0;

 mutex_lock(&s5k6aa->lock);

 if (s5k6aa->power == !on) {
  if (on) {
   ret = __s5k6aa_power_on(s5k6aa);
   if (!ret)
    ret = s5k6aa_initialize_isp(sd);
  } else {
   ret = __s5k6aa_power_off(s5k6aa);
  }

  if (!ret)
   s5k6aa->power += on ? 1 : -1;
 }

 mutex_unlock(&s5k6aa->lock);

 if (!on || ret || s5k6aa->power != 1)
  return ret;

 return v4l2_ctrl_handler_setup(sd->ctrl_handler);
}
