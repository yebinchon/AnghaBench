
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 int V4L2_PRIORITY_BACKGROUND ;
 int V4L2_PRIORITY_INTERACTIVE ;
 int V4L2_PRIORITY_RECORD ;

__attribute__((used)) static inline bool prio_is_valid(enum v4l2_priority prio)
{
 return prio == V4L2_PRIORITY_BACKGROUND ||
        prio == V4L2_PRIORITY_INTERACTIVE ||
        prio == V4L2_PRIORITY_RECORD;
}
