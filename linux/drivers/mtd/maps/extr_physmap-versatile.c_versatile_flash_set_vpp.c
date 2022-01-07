
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;


 int VERSATILE_SYS_FLASH_OFFSET ;
 int pr_err (char*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int syscon_regmap ;

__attribute__((used)) static void versatile_flash_set_vpp(struct map_info *map, int on)
{
 int ret;

 ret = regmap_update_bits(syscon_regmap, VERSATILE_SYS_FLASH_OFFSET,
     0x01, !!on);
 if (ret)
  pr_err("error setting Versatile VPP\n");
}
