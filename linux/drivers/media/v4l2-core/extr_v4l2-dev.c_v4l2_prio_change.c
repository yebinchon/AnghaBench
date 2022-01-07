
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_prio_state {int * prios; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 int EINVAL ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ prio_is_valid (int) ;

int v4l2_prio_change(struct v4l2_prio_state *global, enum v4l2_priority *local,
       enum v4l2_priority new)
{
 if (!prio_is_valid(new))
  return -EINVAL;
 if (*local == new)
  return 0;

 atomic_inc(&global->prios[new]);
 if (prio_is_valid(*local))
  atomic_dec(&global->prios[*local]);
 *local = new;
 return 0;
}
