
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_fwht_pixfmt_info {int dummy; } ;


 unsigned int ARRAY_SIZE (struct v4l2_fwht_pixfmt_info const*) ;
 struct v4l2_fwht_pixfmt_info const* v4l2_fwht_pixfmts ;
 int v4l2_fwht_validate_fmt (struct v4l2_fwht_pixfmt_info const*,int ,int ,int ,int ) ;

const struct v4l2_fwht_pixfmt_info *v4l2_fwht_find_nth_fmt(u32 width_div,
         u32 height_div,
         u32 components_num,
         u32 pixenc,
         unsigned int start_idx)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(v4l2_fwht_pixfmts); i++) {
  bool is_valid = v4l2_fwht_validate_fmt(&v4l2_fwht_pixfmts[i],
             width_div, height_div,
             components_num, pixenc);
  if (is_valid) {
   if (start_idx == 0)
    return v4l2_fwht_pixfmts + i;
   start_idx--;
  }
 }
 return ((void*)0);
}
