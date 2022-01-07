
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vimc_deb_pix_map {scalar_t__ code; } ;


 unsigned int ARRAY_SIZE (struct vimc_deb_pix_map const*) ;
 struct vimc_deb_pix_map const* vimc_deb_pix_map_list ;

__attribute__((used)) static const struct vimc_deb_pix_map *vimc_deb_pix_map_by_code(u32 code)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(vimc_deb_pix_map_list); i++)
  if (vimc_deb_pix_map_list[i].code == code)
   return &vimc_deb_pix_map_list[i];

 return ((void*)0);
}
