
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl {int ncontrols; TYPE_1__** cluster; } ;
struct TYPE_2__ {int is_new; } ;


 int call_op (struct v4l2_ctrl*,int ) ;
 int cur_to_new (TYPE_1__*) ;
 int g_volatile_ctrl ;

__attribute__((used)) static void update_from_auto_cluster(struct v4l2_ctrl *master)
{
 int i;

 for (i = 1; i < master->ncontrols; i++)
  cur_to_new(master->cluster[i]);
 if (!call_op(master, g_volatile_ctrl))
  for (i = 1; i < master->ncontrols; i++)
   if (master->cluster[i])
    master->cluster[i]->is_new = 1;
}
