
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int changes; } ;
struct TYPE_4__ {TYPE_1__ src_change; } ;
struct v4l2_event {TYPE_2__ u; } ;



__attribute__((used)) static void v4l2_event_src_merge(const struct v4l2_event *old,
    struct v4l2_event *new)
{
 new->u.src_change.changes |= old->u.src_change.changes;
}
