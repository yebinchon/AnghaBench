
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;


 int CINTEGRATOR_FLMASK ;
 int CINTEGRATOR_FLVPPEN ;
 int CINTEGRATOR_FLWREN ;
 int INTCP_FLASHPROG_OFFSET ;
 int pr_err (char*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int syscon_regmap ;

__attribute__((used)) static void cp_flash_set_vpp(struct map_info *map, int on)
{
 int ret;

 if (on) {
  ret = regmap_update_bits(syscon_regmap,
    INTCP_FLASHPROG_OFFSET,
    CINTEGRATOR_FLMASK,
    CINTEGRATOR_FLVPPEN | CINTEGRATOR_FLWREN);
  if (ret)
   pr_err("error setting CP VPP\n");
 } else {
  ret = regmap_update_bits(syscon_regmap,
    INTCP_FLASHPROG_OFFSET,
    CINTEGRATOR_FLMASK,
    0);
  if (ret)
   pr_err("error setting CP VPP\n");
 }
}
