
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon {int shrinker_registered; int shrinker; } ;


 int unregister_shrinker (int *) ;

__attribute__((used)) static void vmballoon_unregister_shrinker(struct vmballoon *b)
{
 if (b->shrinker_registered)
  unregister_shrinker(&b->shrinker);
 b->shrinker_registered = 0;
}
