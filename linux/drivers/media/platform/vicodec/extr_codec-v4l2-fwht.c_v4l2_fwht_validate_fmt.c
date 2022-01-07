
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_fwht_pixfmt_info {scalar_t__ width_div; scalar_t__ height_div; scalar_t__ pixenc; scalar_t__ components_num; } ;



bool v4l2_fwht_validate_fmt(const struct v4l2_fwht_pixfmt_info *info,
       u32 width_div, u32 height_div, u32 components_num,
       u32 pixenc)
{
 if (info->width_div == width_div &&
     info->height_div == height_div &&
     (!pixenc || info->pixenc == pixenc) &&
     info->components_num == components_num)
  return 1;
 return 0;
}
