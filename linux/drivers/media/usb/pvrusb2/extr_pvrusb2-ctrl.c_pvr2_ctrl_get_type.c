
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_1__* info; } ;
typedef enum pvr2_ctl_type { ____Placeholder_pvr2_ctl_type } pvr2_ctl_type ;
struct TYPE_2__ {int type; } ;


 int pvr2_ctl_int ;

enum pvr2_ctl_type pvr2_ctrl_get_type(struct pvr2_ctrl *cptr)
{
 if (!cptr) return pvr2_ctl_int;
 return cptr->info->type;
}
