
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seeks; int count_objects; int scan_objects; } ;
struct vmballoon {int shrinker_registered; TYPE_1__ shrinker; } ;


 int DEFAULT_SEEKS ;
 int register_shrinker (TYPE_1__*) ;
 int vmballoon_shrinker_count ;
 int vmballoon_shrinker_scan ;
 int vmwballoon_shrinker_enable ;

__attribute__((used)) static int vmballoon_register_shrinker(struct vmballoon *b)
{
 int r;


 if (!vmwballoon_shrinker_enable)
  return 0;

 b->shrinker.scan_objects = vmballoon_shrinker_scan;
 b->shrinker.count_objects = vmballoon_shrinker_count;
 b->shrinker.seeks = DEFAULT_SEEKS;

 r = register_shrinker(&b->shrinker);

 if (r == 0)
  b->shrinker_registered = 1;

 return r;
}
