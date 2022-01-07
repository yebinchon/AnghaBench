
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon {int size; } ;
struct shrinker {int dummy; } ;
struct shrink_control {int dummy; } ;


 unsigned long atomic64_read (int *) ;
 struct vmballoon balloon ;

__attribute__((used)) static unsigned long vmballoon_shrinker_count(struct shrinker *shrinker,
           struct shrink_control *sc)
{
 struct vmballoon *b = &balloon;

 return atomic64_read(&b->size);
}
