
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_fh {int dummy; } ;
struct v4l2_ctrl {int ncontrols; int flags; int has_changed; struct v4l2_ctrl** cluster; scalar_t__ has_volatiles; int is_new; } ;


 int EBUSY ;
 int V4L2_CTRL_FLAG_GRABBED ;
 int V4L2_EVENT_CTRL_CH_FLAGS ;
 int call_op (struct v4l2_ctrl*,int ) ;
 int cluster_changed (struct v4l2_ctrl*) ;
 int cur_to_new (struct v4l2_ctrl*) ;
 scalar_t__ is_cur_manual (struct v4l2_ctrl*) ;
 scalar_t__ is_new_manual (struct v4l2_ctrl*) ;
 int new_to_cur (struct v4l2_fh*,struct v4l2_ctrl*,int) ;
 int s_ctrl ;
 int try_ctrl ;

__attribute__((used)) static int try_or_set_cluster(struct v4l2_fh *fh, struct v4l2_ctrl *master,
         bool set, u32 ch_flags)
{
 bool update_flag;
 int ret;
 int i;





 for (i = 0; i < master->ncontrols; i++) {
  struct v4l2_ctrl *ctrl = master->cluster[i];

  if (ctrl == ((void*)0))
   continue;

  if (!ctrl->is_new) {
   cur_to_new(ctrl);
   continue;
  }


  if (set && (ctrl->flags & V4L2_CTRL_FLAG_GRABBED))
   return -EBUSY;
 }

 ret = call_op(master, try_ctrl);


 if (ret || !set || !cluster_changed(master))
  return ret;
 ret = call_op(master, s_ctrl);
 if (ret)
  return ret;


 update_flag = is_cur_manual(master) != is_new_manual(master);

 for (i = 0; i < master->ncontrols; i++) {







  if (i && update_flag && is_new_manual(master) &&
      master->has_volatiles && master->cluster[i])
   master->cluster[i]->has_changed = 1;

  new_to_cur(fh, master->cluster[i], ch_flags |
   ((update_flag && i > 0) ? V4L2_EVENT_CTRL_CH_FLAGS : 0));
 }
 return 0;
}
