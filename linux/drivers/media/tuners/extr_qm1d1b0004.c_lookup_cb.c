
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct qm1d1b0004_cb_map {scalar_t__ frequency; int cb; } ;


 int ARRAY_SIZE (struct qm1d1b0004_cb_map*) ;
 struct qm1d1b0004_cb_map* cb_maps ;

__attribute__((used)) static u8 lookup_cb(u32 frequency)
{
 int i;
 const struct qm1d1b0004_cb_map *map;

 for (i = 0; i < ARRAY_SIZE(cb_maps); i++) {
  map = &cb_maps[i];
  if (frequency < map->frequency)
   return map->cb;
 }
 return 0xc0;
}
