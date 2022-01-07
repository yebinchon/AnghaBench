
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int changes; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;
struct v4l2_event {TYPE_2__ u; } ;



void v4l2_ctrl_replace(struct v4l2_event *old, const struct v4l2_event *new)
{
 u32 old_changes = old->u.ctrl.changes;

 old->u.ctrl = new->u.ctrl;
 old->u.ctrl.changes |= old_changes;
}
