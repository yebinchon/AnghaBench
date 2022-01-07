
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct noon010_info {int hdl; } ;


 struct noon010_info* to_noon010 (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_log_status (int *,int ) ;

__attribute__((used)) static int noon010_log_status(struct v4l2_subdev *sd)
{
 struct noon010_info *info = to_noon010(sd);

 v4l2_ctrl_handler_log_status(&info->hdl, sd->name);
 return 0;
}
