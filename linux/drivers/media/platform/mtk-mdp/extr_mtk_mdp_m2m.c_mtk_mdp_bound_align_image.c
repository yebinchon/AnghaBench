
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ffs (unsigned int) ;
 int v4l_bound_align_image (int*,unsigned int,unsigned int,int,int*,unsigned int,unsigned int,int,int ) ;

__attribute__((used)) static void mtk_mdp_bound_align_image(u32 *w, unsigned int wmin,
          unsigned int wmax, unsigned int align_w,
          u32 *h, unsigned int hmin,
          unsigned int hmax, unsigned int align_h)
{
 int org_w, org_h, step_w, step_h;
 int walign, halign;

 org_w = *w;
 org_h = *h;
 walign = ffs(align_w) - 1;
 halign = ffs(align_h) - 1;
 v4l_bound_align_image(w, wmin, wmax, walign, h, hmin, hmax, halign, 0);

 step_w = 1 << walign;
 step_h = 1 << halign;
 if (*w < org_w && (*w + step_w) <= wmax)
  *w += step_w;
 if (*h < org_h && (*h + step_h) <= hmax)
  *h += step_h;
}
