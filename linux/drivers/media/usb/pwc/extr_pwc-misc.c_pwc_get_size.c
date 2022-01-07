
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int image_mask; } ;


 int PSZ_MAX ;
 int** pwc_image_sizes ;

int pwc_get_size(struct pwc_device *pdev, int width, int height)
{
 int i;



 for (i = PSZ_MAX - 1; i >= 0; i--) {
  if (!(pdev->image_mask & (1 << i)))
   continue;

  if (pwc_image_sizes[i][0] <= width &&
      pwc_image_sizes[i][1] <= height)
   return i;
 }


 for (i = 0; i < PSZ_MAX; i++) {
  if (pdev->image_mask & (1 << i))
   return i;
 }


 return 0;
}
