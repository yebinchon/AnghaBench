
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int v4l_bound_align_image (int*,unsigned int,unsigned int,unsigned int,int*,unsigned int,unsigned int,unsigned int,int ) ;

__attribute__((used)) static void mtk_jpeg_bound_align_image(u32 *w, unsigned int wmin,
           unsigned int wmax, unsigned int walign,
           u32 *h, unsigned int hmin,
           unsigned int hmax, unsigned int halign)
{
 int width, height, w_step, h_step;

 width = *w;
 height = *h;
 w_step = 1 << walign;
 h_step = 1 << halign;

 v4l_bound_align_image(w, wmin, wmax, walign, h, hmin, hmax, halign, 0);
 if (*w < width && (*w + w_step) <= wmax)
  *w += w_step;
 if (*h < height && (*h + h_step) <= hmax)
  *h += h_step;
}
