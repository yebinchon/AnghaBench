
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_1__* info; } ;
struct TYPE_2__ {char const* desc; } ;



const char *pvr2_ctrl_get_desc(struct pvr2_ctrl *cptr)
{
 if (!cptr) return ((void*)0);
 return cptr->info->desc;
}
