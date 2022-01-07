
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int changes; } ;
struct TYPE_4__ {TYPE_1__ src_change; } ;
struct v4l2_event {TYPE_2__ u; } ;



__attribute__((used)) static void v4l2_event_src_replace(struct v4l2_event *old,
    const struct v4l2_event *new)
{
 u32 old_changes = old->u.src_change.changes;

 old->u.src_change = new->u.src_change;
 old->u.src_change.changes |= old_changes;
}
