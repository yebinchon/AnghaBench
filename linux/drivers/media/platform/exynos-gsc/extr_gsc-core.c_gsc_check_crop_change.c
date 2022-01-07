
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int pr_info (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

void gsc_check_crop_change(u32 tmp_w, u32 tmp_h, u32 *w, u32 *h)
{
 if (tmp_w != *w || tmp_h != *h) {
  pr_info("Cropped size has been modified from %dx%d to %dx%d",
       *w, *h, tmp_w, tmp_h);
  *w = tmp_w;
  *h = tmp_h;
 }
}
