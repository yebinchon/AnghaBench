
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
 int V4L2_CTRL_TYPE_INTEGER_MENU ;
 int handler_set_err (struct v4l2_ctrl_handler*,int ) ;
 int v4l2_ctrl_fill (int ,char const**,int*,int *,int *,int *,int *,int *) ;
 struct v4l2_ctrl* v4l2_ctrl_new (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int *,int ,char const*,int,int ,int ,int ,int ,int *,int ,int ,int *,int const*,int *) ;

struct v4l2_ctrl *v4l2_ctrl_new_int_menu(struct v4l2_ctrl_handler *hdl,
   const struct v4l2_ctrl_ops *ops,
   u32 id, u8 _max, u8 _def, const s64 *qmenu_int)
{
 const char *name;
 enum v4l2_ctrl_type type;
 s64 min;
 u64 step;
 s64 max = _max;
 s64 def = _def;
 u32 flags;

 v4l2_ctrl_fill(id, &name, &type, &min, &max, &step, &def, &flags);
 if (type != V4L2_CTRL_TYPE_INTEGER_MENU) {
  handler_set_err(hdl, -EINVAL);
  return ((void*)0);
 }
 return v4l2_ctrl_new(hdl, ops, ((void*)0), id, name, type,
        0, max, 0, def, ((void*)0), 0,
        flags, ((void*)0), qmenu_int, ((void*)0));
}
