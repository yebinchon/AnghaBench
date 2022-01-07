
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int dummy; } ;
typedef int s64 ;
typedef enum v4l2_ctrl_type { ____Placeholder_v4l2_ctrl_type } v4l2_ctrl_type ;


 int EINVAL ;
 int V4L2_CTRL_COMPOUND_TYPES ;
 int V4L2_CTRL_TYPE_INTEGER_MENU ;
 int V4L2_CTRL_TYPE_MENU ;
 int handler_set_err (struct v4l2_ctrl_handler*,int ) ;
 int v4l2_ctrl_fill (int ,char const**,int*,int *,int *,int *,int *,int *) ;
 struct v4l2_ctrl* v4l2_ctrl_new (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int *,int ,char const*,int,int ,int ,int ,int ,int *,int ,int ,int *,int *,int *) ;

struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *hdl,
   const struct v4l2_ctrl_ops *ops,
   u32 id, s64 min, s64 max, u64 step, s64 def)
{
 const char *name;
 enum v4l2_ctrl_type type;
 u32 flags;

 v4l2_ctrl_fill(id, &name, &type, &min, &max, &step, &def, &flags);
 if (type == V4L2_CTRL_TYPE_MENU ||
     type == V4L2_CTRL_TYPE_INTEGER_MENU ||
     type >= V4L2_CTRL_COMPOUND_TYPES) {
  handler_set_err(hdl, -EINVAL);
  return ((void*)0);
 }
 return v4l2_ctrl_new(hdl, ops, ((void*)0), id, name, type,
        min, max, step, def, ((void*)0), 0,
        flags, ((void*)0), ((void*)0), ((void*)0));
}
