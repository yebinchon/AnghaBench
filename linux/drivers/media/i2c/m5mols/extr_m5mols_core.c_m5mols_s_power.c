
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct m5mols_info {int lock; scalar_t__ ctrl_sync; } ;


 int REG_MONITOR ;
 int REG_SAMSUNG_TECHWIN ;
 scalar_t__ is_manufacturer (struct m5mols_info*,int ) ;
 int m5mols_auto_focus_stop (struct m5mols_info*) ;
 int m5mols_fw_start (struct v4l2_subdev*) ;
 int m5mols_sensor_power (struct m5mols_info*,int) ;
 int m5mols_set_mode (struct m5mols_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct m5mols_info* to_m5mols (struct v4l2_subdev*) ;
 int v4l2_warn (struct v4l2_subdev*,char*) ;

__attribute__((used)) static int m5mols_s_power(struct v4l2_subdev *sd, int on)
{
 struct m5mols_info *info = to_m5mols(sd);
 int ret;

 mutex_lock(&info->lock);

 if (on) {
  ret = m5mols_sensor_power(info, 1);
  if (!ret)
   ret = m5mols_fw_start(sd);
 } else {
  if (is_manufacturer(info, REG_SAMSUNG_TECHWIN)) {
   ret = m5mols_set_mode(info, REG_MONITOR);
   if (!ret)
    ret = m5mols_auto_focus_stop(info);
   if (ret < 0)
    v4l2_warn(sd, "Soft landing lens failed\n");
  }
  ret = m5mols_sensor_power(info, 0);

  info->ctrl_sync = 0;
 }

 mutex_unlock(&info->lock);
 return ret;
}
