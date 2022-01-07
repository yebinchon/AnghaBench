
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct et8ek8_reglist {int dummy; } ;
struct et8ek8_meta_reglist {TYPE_1__* reglist; } ;
struct TYPE_2__ {struct et8ek8_reglist* ptr; } ;



__attribute__((used)) static struct et8ek8_reglist **et8ek8_reglist_first(
  struct et8ek8_meta_reglist *meta)
{
 return &meta->reglist[0].ptr;
}
