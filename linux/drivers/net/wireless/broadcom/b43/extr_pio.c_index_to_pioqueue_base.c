
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u16 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int core_rev; } ;


 unsigned int ARRAY_SIZE (int const*) ;
 int B43_WARN_ON (int) ;

__attribute__((used)) static u16 index_to_pioqueue_base(struct b43_wldev *dev,
      unsigned int index)
{
 static const u16 bases[] = {
  135,
  134,
  133,
  132,
  131,
  130,
  129,
  128,
 };
 static const u16 bases_rev11[] = {
  141,
  140,
  139,
  138,
  137,
  136,
 };

 if (dev->dev->core_rev >= 11) {
  B43_WARN_ON(index >= ARRAY_SIZE(bases_rev11));
  return bases_rev11[index];
 }
 B43_WARN_ON(index >= ARRAY_SIZE(bases));
 return bases[index];
}
