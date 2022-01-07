
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_1__* info; } ;
struct TYPE_2__ {int * set_value; } ;



int pvr2_ctrl_is_writable(struct pvr2_ctrl *cptr)
{
 if (!cptr) return 0;
 return cptr->info->set_value != ((void*)0);
}
