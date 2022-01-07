
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct m5mols_info {int handle; } ;


 struct m5mols_info* to_m5mols (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_log_status (int *,int ) ;

__attribute__((used)) static int m5mols_log_status(struct v4l2_subdev *sd)
{
 struct m5mols_info *info = to_m5mols(sd);

 v4l2_ctrl_handler_log_status(&info->handle, sd->name);

 return 0;
}
