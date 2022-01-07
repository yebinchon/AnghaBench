
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct m5mols_info {int resolution; struct v4l2_subdev sd; } ;


 int PARM_MON_FPS ;
 int PARM_MON_SIZE ;
 int REG_FPS_30 ;
 int REG_MONITOR ;
 int REG_PARAMETER ;
 int m5mols_restore_controls (struct m5mols_info*) ;
 int m5mols_set_mode (struct m5mols_info*,int ) ;
 int m5mols_write (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int m5mols_start_monitor(struct m5mols_info *info)
{
 struct v4l2_subdev *sd = &info->sd;
 int ret;

 ret = m5mols_set_mode(info, REG_PARAMETER);
 if (!ret)
  ret = m5mols_write(sd, PARM_MON_SIZE, info->resolution);
 if (!ret)
  ret = m5mols_write(sd, PARM_MON_FPS, REG_FPS_30);
 if (!ret)
  ret = m5mols_set_mode(info, REG_MONITOR);
 if (!ret)
  ret = m5mols_restore_controls(info);

 return ret;
}
