
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m5mols_info {int ctrl_sync; int handle; } ;


 int REG_SCENE_NORMAL ;
 int m5mols_do_scenemode (struct m5mols_info*,int ) ;
 int v4l2_ctrl_handler_setup (int *) ;

int m5mols_restore_controls(struct m5mols_info *info)
{
 int ret;

 if (info->ctrl_sync)
  return 0;

 ret = m5mols_do_scenemode(info, REG_SCENE_NORMAL);
 if (ret)
  return ret;

 ret = v4l2_ctrl_handler_setup(&info->handle);
 info->ctrl_sync = !ret;

 return ret;
}
