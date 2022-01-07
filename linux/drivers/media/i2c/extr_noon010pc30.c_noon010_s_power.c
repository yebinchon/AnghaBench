
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct noon010_info {int hdl; int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int noon010_base_config (struct v4l2_subdev*) ;
 int noon010_power_ctrl (struct v4l2_subdev*,int,int) ;
 int power_disable (struct noon010_info*) ;
 int power_enable (struct noon010_info*) ;
 struct noon010_info* to_noon010 (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int noon010_s_power(struct v4l2_subdev *sd, int on)
{
 struct noon010_info *info = to_noon010(sd);
 int ret;

 mutex_lock(&info->lock);
 if (on) {
  ret = power_enable(info);
  if (!ret)
   ret = noon010_base_config(sd);
 } else {
  noon010_power_ctrl(sd, 0, 1);
  ret = power_disable(info);
 }
 mutex_unlock(&info->lock);


 if (!ret && on)
  ret = v4l2_ctrl_handler_setup(&info->hdl);

 return ret;
}
