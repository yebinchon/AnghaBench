
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_fh {int dummy; } ;
struct v4l2_ctrl {int ncontrols; int is_new; scalar_t__ val; scalar_t__ manual_mode_value; scalar_t__ has_volatiles; scalar_t__ is_auto; int p_new; struct v4l2_ctrl** cluster; } ;


 int is_cur_manual (struct v4l2_ctrl*) ;
 int try_or_set_cluster (struct v4l2_fh*,struct v4l2_ctrl*,int,int ) ;
 int update_from_auto_cluster (struct v4l2_ctrl*) ;
 int validate_new (struct v4l2_ctrl*,int ) ;

__attribute__((used)) static int set_ctrl(struct v4l2_fh *fh, struct v4l2_ctrl *ctrl, u32 ch_flags)
{
 struct v4l2_ctrl *master = ctrl->cluster[0];
 int ret;
 int i;


 for (i = 0; i < master->ncontrols; i++)
  if (master->cluster[i])
   master->cluster[i]->is_new = 0;

 ret = validate_new(ctrl, ctrl->p_new);
 if (ret)
  return ret;




 if (master->is_auto && master->has_volatiles && ctrl == master &&
     !is_cur_manual(master) && ctrl->val == master->manual_mode_value)
  update_from_auto_cluster(master);

 ctrl->is_new = 1;
 return try_or_set_cluster(fh, master, 1, ch_flags);
}
