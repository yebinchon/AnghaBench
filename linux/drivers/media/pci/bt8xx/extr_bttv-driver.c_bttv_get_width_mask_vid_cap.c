
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv_format {int flags; } ;


 int FORMAT_FLAGS_PLANAR ;

__attribute__((used)) static void bttv_get_width_mask_vid_cap(const struct bttv_format *fmt,
     unsigned int *width_mask,
     unsigned int *width_bias)
{
 if (fmt->flags & FORMAT_FLAGS_PLANAR) {
  *width_mask = ~15;
  *width_bias = 8;
 } else {
  *width_mask = ~3;
  *width_bias = 2;
 }
}
