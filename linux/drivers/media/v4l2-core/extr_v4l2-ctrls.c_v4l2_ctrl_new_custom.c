
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl_config {char* name; char** qmenu; int type; int is_private; int elem_size; int dims; int menu_skip_mask; int id; int type_ops; int ops; int def; int step; int max; int min; int flags; int * qmenu_int; } ;
struct v4l2_ctrl {int is_private; } ;
typedef int s64 ;
typedef enum v4l2_ctrl_type { ____Placeholder_v4l2_ctrl_type } v4l2_ctrl_type ;


 int EINVAL ;
 int V4L2_CTRL_TYPE_INTEGER_MENU ;
 int V4L2_CTRL_TYPE_MENU ;
 int WARN_ON (int ) ;
 int handler_set_err (struct v4l2_ctrl_handler*,int ) ;
 int v4l2_ctrl_fill (int ,char const**,int*,int *,int *,int *,int *,int *) ;
 char** v4l2_ctrl_get_menu (int ) ;
 struct v4l2_ctrl* v4l2_ctrl_new (struct v4l2_ctrl_handler*,int ,int ,int ,char const*,int,int ,int ,int ,int ,int ,int ,int ,char const* const*,int const*,void*) ;

struct v4l2_ctrl *v4l2_ctrl_new_custom(struct v4l2_ctrl_handler *hdl,
   const struct v4l2_ctrl_config *cfg, void *priv)
{
 bool is_menu;
 struct v4l2_ctrl *ctrl;
 const char *name = cfg->name;
 const char * const *qmenu = cfg->qmenu;
 const s64 *qmenu_int = cfg->qmenu_int;
 enum v4l2_ctrl_type type = cfg->type;
 u32 flags = cfg->flags;
 s64 min = cfg->min;
 s64 max = cfg->max;
 u64 step = cfg->step;
 s64 def = cfg->def;

 if (name == ((void*)0))
  v4l2_ctrl_fill(cfg->id, &name, &type, &min, &max, &step,
        &def, &flags);

 is_menu = (type == V4L2_CTRL_TYPE_MENU ||
     type == V4L2_CTRL_TYPE_INTEGER_MENU);
 if (is_menu)
  WARN_ON(step);
 else
  WARN_ON(cfg->menu_skip_mask);
 if (type == V4L2_CTRL_TYPE_MENU && !qmenu) {
  qmenu = v4l2_ctrl_get_menu(cfg->id);
 } else if (type == V4L2_CTRL_TYPE_INTEGER_MENU && !qmenu_int) {
  handler_set_err(hdl, -EINVAL);
  return ((void*)0);
 }

 ctrl = v4l2_ctrl_new(hdl, cfg->ops, cfg->type_ops, cfg->id, name,
   type, min, max,
   is_menu ? cfg->menu_skip_mask : step, def,
   cfg->dims, cfg->elem_size,
   flags, qmenu, qmenu_int, priv);
 if (ctrl)
  ctrl->is_private = cfg->is_private;
 return ctrl;
}
