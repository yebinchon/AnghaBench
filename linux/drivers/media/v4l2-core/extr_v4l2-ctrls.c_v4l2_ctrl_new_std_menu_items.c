
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int dummy; } ;
typedef int s64 ;
typedef enum v4l2_ctrl_type { ____Placeholder_v4l2_ctrl_type } v4l2_ctrl_type ;


 int EINVAL ;
 int V4L2_CTRL_TYPE_MENU ;
 int handler_set_err (struct v4l2_ctrl_handler*,int ) ;
 int v4l2_ctrl_fill (int ,char const**,int*,int *,int *,int *,int *,int *) ;
 scalar_t__ v4l2_ctrl_get_menu (int ) ;
 struct v4l2_ctrl* v4l2_ctrl_new (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int *,int ,char const*,int,int ,int ,int ,int ,int *,int ,int ,char const* const*,int *,int *) ;

struct v4l2_ctrl *v4l2_ctrl_new_std_menu_items(struct v4l2_ctrl_handler *hdl,
   const struct v4l2_ctrl_ops *ops, u32 id, u8 _max,
   u64 mask, u8 _def, const char * const *qmenu)
{
 enum v4l2_ctrl_type type;
 const char *name;
 u32 flags;
 u64 step;
 s64 min;
 s64 max = _max;
 s64 def = _def;




 if (v4l2_ctrl_get_menu(id)) {
  handler_set_err(hdl, -EINVAL);
  return ((void*)0);
 }

 v4l2_ctrl_fill(id, &name, &type, &min, &max, &step, &def, &flags);
 if (type != V4L2_CTRL_TYPE_MENU || qmenu == ((void*)0)) {
  handler_set_err(hdl, -EINVAL);
  return ((void*)0);
 }
 return v4l2_ctrl_new(hdl, ops, ((void*)0), id, name, type,
        0, max, mask, def, ((void*)0), 0,
        flags, qmenu, ((void*)0), ((void*)0));

}
