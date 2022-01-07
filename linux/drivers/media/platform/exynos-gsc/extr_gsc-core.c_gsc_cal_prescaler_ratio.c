
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_variant {int poly_sc_down_max; int pre_sc_down_max; } ;


 int EINVAL ;
 int pr_err (char*) ;

int gsc_cal_prescaler_ratio(struct gsc_variant *var, u32 src, u32 dst,
        u32 *ratio)
{
 if ((dst > src) || (dst >= src / var->poly_sc_down_max)) {
  *ratio = 1;
  return 0;
 }

 if ((src / var->poly_sc_down_max / var->pre_sc_down_max) > dst) {
  pr_err("Exceeded maximum downscaling ratio (1/16))");
  return -EINVAL;
 }

 *ratio = (dst > (src / 8)) ? 2 : 4;

 return 0;
}
