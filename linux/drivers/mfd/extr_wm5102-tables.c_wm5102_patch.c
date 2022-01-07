
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_sequence {int dummy; } ;
struct arizona {int rev; int regmap; } ;


 int ARRAY_SIZE (struct reg_sequence*) ;
 int regmap_multi_reg_write_bypassed (int ,struct reg_sequence const*,int) ;
 struct reg_sequence* wm5102_reva_patch ;
 struct reg_sequence* wm5102_revb_patch ;

int wm5102_patch(struct arizona *arizona)
{
 const struct reg_sequence *wm5102_patch;
 int patch_size;

 switch (arizona->rev) {
 case 0:
  wm5102_patch = wm5102_reva_patch;
  patch_size = ARRAY_SIZE(wm5102_reva_patch);
  break;
 default:
  wm5102_patch = wm5102_revb_patch;
  patch_size = ARRAY_SIZE(wm5102_revb_patch);
 }

 return regmap_multi_reg_write_bypassed(arizona->regmap,
            wm5102_patch,
            patch_size);
}
