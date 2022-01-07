
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct et8ek8_reglist {scalar_t__ type; } ;
struct et8ek8_meta_reglist {TYPE_1__* reglist; } ;
struct TYPE_2__ {struct et8ek8_reglist* ptr; } ;



__attribute__((used)) static struct et8ek8_reglist *et8ek8_reglist_find_type(
  struct et8ek8_meta_reglist *meta,
  u16 type)
{
 struct et8ek8_reglist **next = &meta->reglist[0].ptr;

 while (*next) {
  if ((*next)->type == type)
   return *next;

  next++;
 }

 return ((void*)0);
}
