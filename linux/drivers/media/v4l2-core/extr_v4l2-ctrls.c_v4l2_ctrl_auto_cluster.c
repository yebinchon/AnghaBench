
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct v4l2_ctrl {scalar_t__ minimum; scalar_t__ maximum; int is_auto; int has_volatiles; int flags; scalar_t__ manual_mode_value; } ;


 int V4L2_CTRL_FLAG_INACTIVE ;
 int V4L2_CTRL_FLAG_UPDATE ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int WARN_ON (int) ;
 int g_volatile_ctrl ;
 int has_op (struct v4l2_ctrl*,int ) ;
 int is_cur_manual (struct v4l2_ctrl*) ;
 int v4l2_ctrl_cluster (unsigned int,struct v4l2_ctrl**) ;

void v4l2_ctrl_auto_cluster(unsigned ncontrols, struct v4l2_ctrl **controls,
       u8 manual_val, bool set_volatile)
{
 struct v4l2_ctrl *master = controls[0];
 u32 flag = 0;
 int i;

 v4l2_ctrl_cluster(ncontrols, controls);
 WARN_ON(ncontrols <= 1);
 WARN_ON(manual_val < master->minimum || manual_val > master->maximum);
 WARN_ON(set_volatile && !has_op(master, g_volatile_ctrl));
 master->is_auto = 1;
 master->has_volatiles = set_volatile;
 master->manual_mode_value = manual_val;
 master->flags |= V4L2_CTRL_FLAG_UPDATE;

 if (!is_cur_manual(master))
  flag = V4L2_CTRL_FLAG_INACTIVE |
   (set_volatile ? V4L2_CTRL_FLAG_VOLATILE : 0);

 for (i = 1; i < ncontrols; i++)
  if (controls[i])
   controls[i]->flags |= flag;
}
