
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {unsigned int ncontrols; int flags; int has_volatiles; struct v4l2_ctrl** cluster; } ;


 int V4L2_CTRL_FLAG_VOLATILE ;
 scalar_t__ WARN_ON (int) ;

void v4l2_ctrl_cluster(unsigned ncontrols, struct v4l2_ctrl **controls)
{
 bool has_volatiles = 0;
 int i;


 if (WARN_ON(ncontrols == 0 || controls[0] == ((void*)0)))
  return;

 for (i = 0; i < ncontrols; i++) {
  if (controls[i]) {
   controls[i]->cluster = controls;
   controls[i]->ncontrols = ncontrols;
   if (controls[i]->flags & V4L2_CTRL_FLAG_VOLATILE)
    has_volatiles = 1;
  }
 }
 controls[0]->has_volatiles = has_volatiles;
}
