
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct s5p_jpeg_ctx {TYPE_2__* jpeg; } ;
struct TYPE_4__ {TYPE_1__* variant; } ;
struct TYPE_3__ {scalar_t__ hw3250_compat; } ;


 int v4l_bound_align_image (int*,unsigned int,unsigned int,unsigned int,int*,unsigned int,unsigned int,unsigned int,int ) ;

__attribute__((used)) static void jpeg_bound_align_image(struct s5p_jpeg_ctx *ctx,
       u32 *w, unsigned int wmin, unsigned int wmax,
       unsigned int walign,
       u32 *h, unsigned int hmin, unsigned int hmax,
       unsigned int halign)
{
 int width, height, w_step, h_step;

 width = *w;
 height = *h;

 w_step = 1 << walign;
 h_step = 1 << halign;

 if (ctx->jpeg->variant->hw3250_compat) {







  if (w_step == 4 && ((width & 3) == 1)) {
   wmax = width;
   hmax = height;
  }
 }

 v4l_bound_align_image(w, wmin, wmax, walign, h, hmin, hmax, halign, 0);

 if (*w < width && (*w + w_step) < wmax)
  *w += w_step;
 if (*h < height && (*h + h_step) < hmax)
  *h += h_step;
}
