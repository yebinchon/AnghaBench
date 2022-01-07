
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_1__* hdw; } ;
struct TYPE_2__ {int master_state; } ;



__attribute__((used)) static int ctrl_masterstate_get(struct pvr2_ctrl *cptr,int *vp)
{
 *vp = cptr->hdw->master_state;
 return 0;
}
