
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum xsdfec_axis_width { ____Placeholder_xsdfec_axis_width } xsdfec_axis_width ;






__attribute__((used)) static u32
xsdfec_translate_axis_width_cfg_val(enum xsdfec_axis_width axis_width_cfg)
{
 u32 axis_width_field = 0;

 switch (axis_width_cfg) {
 case 130:
  axis_width_field = 0;
  break;
 case 129:
  axis_width_field = 1;
  break;
 case 128:
  axis_width_field = 2;
  break;
 }

 return axis_width_field;
}
