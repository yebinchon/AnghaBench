
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ window_width; scalar_t__ window_height; } ;
struct et8ek8_reglist {scalar_t__ type; TYPE_1__ mode; } ;


 scalar_t__ ET8EK8_REGLIST_MODE ;

__attribute__((used)) static int et8ek8_reglist_cmp(const void *a, const void *b)
{
 const struct et8ek8_reglist **list1 = (const struct et8ek8_reglist **)a,
  **list2 = (const struct et8ek8_reglist **)b;


 if ((*list1)->type == ET8EK8_REGLIST_MODE &&
     (*list2)->type != ET8EK8_REGLIST_MODE)
  return -1;
 if ((*list1)->type != ET8EK8_REGLIST_MODE &&
     (*list2)->type == ET8EK8_REGLIST_MODE)
  return 1;


 if ((*list1)->mode.window_width > (*list2)->mode.window_width)
  return -1;
 if ((*list1)->mode.window_width < (*list2)->mode.window_width)
  return 1;

 if ((*list1)->mode.window_height > (*list2)->mode.window_height)
  return -1;
 if ((*list1)->mode.window_height < (*list2)->mode.window_height)
  return 1;

 return 0;
}
