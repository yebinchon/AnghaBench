
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int dummy; } ;


 unsigned int norm_maxh (struct em28xx*) ;
 unsigned int norm_maxw (struct em28xx*) ;

__attribute__((used)) static void scale_to_size(struct em28xx *dev,
     unsigned int hscale, unsigned int vscale,
     unsigned int *width, unsigned int *height)
{
 unsigned int maxw = norm_maxw(dev);
 unsigned int maxh = norm_maxh(dev);

 *width = (((unsigned long)maxw) << 12) / (hscale + 4096L);
 *height = (((unsigned long)maxh) << 12) / (vscale + 4096L);


 if (*width < 1)
  *width = 1;
 if (*height < 1)
  *height = 1;
}
