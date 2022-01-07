
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct s5k6aa {int streaming; int lock; scalar_t__ apply_crop; int preset; scalar_t__ apply_cfg; } ;


 int __s5k6aa_stream (struct s5k6aa*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s5k6aa_set_input_params (struct s5k6aa*) ;
 int s5k6aa_set_prev_config (struct s5k6aa*,int ) ;
 struct s5k6aa* to_s5k6aa (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k6aa_s_stream(struct v4l2_subdev *sd, int on)
{
 struct s5k6aa *s5k6aa = to_s5k6aa(sd);
 int ret = 0;

 mutex_lock(&s5k6aa->lock);

 if (s5k6aa->streaming == !on) {
  if (!ret && s5k6aa->apply_cfg)
   ret = s5k6aa_set_prev_config(s5k6aa, s5k6aa->preset);
  if (s5k6aa->apply_crop)
   ret = s5k6aa_set_input_params(s5k6aa);
  if (!ret)
   ret = __s5k6aa_stream(s5k6aa, !!on);
 }
 mutex_unlock(&s5k6aa->lock);

 return ret;
}
