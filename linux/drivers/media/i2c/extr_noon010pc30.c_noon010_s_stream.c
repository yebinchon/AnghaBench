
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct noon010_info {int streaming; int lock; scalar_t__ apply_new_cfg; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int noon010_power_ctrl (struct v4l2_subdev*,int,int) ;
 int noon010_set_params (struct v4l2_subdev*) ;
 struct noon010_info* to_noon010 (struct v4l2_subdev*) ;

__attribute__((used)) static int noon010_s_stream(struct v4l2_subdev *sd, int on)
{
 struct noon010_info *info = to_noon010(sd);
 int ret = 0;

 mutex_lock(&info->lock);
 if (!info->streaming != !on) {
  ret = noon010_power_ctrl(sd, 0, !on);
  if (!ret)
   info->streaming = on;
 }
 if (!ret && on && info->apply_new_cfg) {
  ret = noon010_set_params(sd);
  if (!ret)
   info->apply_new_cfg = 0;
 }
 mutex_unlock(&info->lock);
 return ret;
}
