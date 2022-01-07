
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct pcm_int_data {int bus_width; } ;
struct map_info {int pfow_base; struct pcm_int_data* fldrv_priv; } ;



__attribute__((used)) static inline u_long ow_reg_add(struct map_info *map, u_long offset)
{
 u_long val = 0;
 struct pcm_int_data *pcm_data = map->fldrv_priv;

 val = map->pfow_base + offset*pcm_data->bus_width;

 return val;
}
