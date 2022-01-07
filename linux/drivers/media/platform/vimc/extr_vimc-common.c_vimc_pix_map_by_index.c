
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vimc_pix_map {int dummy; } ;


 unsigned int ARRAY_SIZE (struct vimc_pix_map const*) ;
 struct vimc_pix_map const* vimc_pix_map_list ;

const struct vimc_pix_map *vimc_pix_map_by_index(unsigned int i)
{
 if (i >= ARRAY_SIZE(vimc_pix_map_list))
  return ((void*)0);

 return &vimc_pix_map_list[i];
}
