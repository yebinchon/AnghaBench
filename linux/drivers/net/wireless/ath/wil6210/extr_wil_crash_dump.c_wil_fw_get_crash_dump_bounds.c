
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wil6210_priv {int dummy; } ;
struct fw_map {scalar_t__ host; scalar_t__ to; scalar_t__ from; int crash_dump; } ;


 int ARRAY_SIZE (struct fw_map*) ;
 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 struct fw_map* fw_mapping ;

__attribute__((used)) static int wil_fw_get_crash_dump_bounds(struct wil6210_priv *wil,
     u32 *out_dump_size, u32 *out_host_min)
{
 int i;
 const struct fw_map *map;
 u32 host_min, host_max, tmp_max;

 if (!out_dump_size)
  return -EINVAL;


 BUILD_BUG_ON(ARRAY_SIZE(fw_mapping) == 0);
 map = &fw_mapping[0];
 host_min = map->host;
 host_max = map->host + (map->to - map->from);

 for (i = 1; i < ARRAY_SIZE(fw_mapping); i++) {
  map = &fw_mapping[i];

  if (!map->crash_dump)
   continue;

  if (map->host < host_min)
   host_min = map->host;

  tmp_max = map->host + (map->to - map->from);
  if (tmp_max > host_max)
   host_max = tmp_max;
 }

 *out_dump_size = host_max - host_min;
 if (out_host_min)
  *out_host_min = host_min;

 return 0;
}
