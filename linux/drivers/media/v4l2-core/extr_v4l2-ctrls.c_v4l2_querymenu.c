
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u32 ;
struct v4l2_querymenu {unsigned long long index; int value; int name; scalar_t__ reserved; int id; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int type; char** qmenu; unsigned long long minimum; unsigned long long maximum; unsigned long long menu_skip_mask; int * qmenu_int; } ;


 int EINVAL ;


 int strscpy (int ,char*,int) ;
 struct v4l2_ctrl* v4l2_ctrl_find (struct v4l2_ctrl_handler*,int ) ;

int v4l2_querymenu(struct v4l2_ctrl_handler *hdl, struct v4l2_querymenu *qm)
{
 struct v4l2_ctrl *ctrl;
 u32 i = qm->index;

 ctrl = v4l2_ctrl_find(hdl, qm->id);
 if (!ctrl)
  return -EINVAL;

 qm->reserved = 0;

 switch (ctrl->type) {
 case 128:
  if (ctrl->qmenu == ((void*)0))
   return -EINVAL;
  break;
 case 129:
  if (ctrl->qmenu_int == ((void*)0))
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 if (i < ctrl->minimum || i > ctrl->maximum)
  return -EINVAL;


 if (ctrl->menu_skip_mask & (1ULL << i))
  return -EINVAL;

 if (ctrl->type == 128) {
  if (ctrl->qmenu[i] == ((void*)0) || ctrl->qmenu[i][0] == '\0')
   return -EINVAL;
  strscpy(qm->name, ctrl->qmenu[i], sizeof(qm->name));
 } else {
  qm->value = ctrl->qmenu_int[i];
 }
 return 0;
}
