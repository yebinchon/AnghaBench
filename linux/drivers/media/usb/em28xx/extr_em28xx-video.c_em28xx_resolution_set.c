
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx_v4l2 {int vbi_width; int norm; int vbi_height; int vscale; int hscale; } ;
struct em28xx {struct em28xx_v4l2* v4l2; } ;


 int V4L2_STD_525_60 ;
 int em28xx_accumulator_set (struct em28xx*,int,int,int,int) ;
 int em28xx_capture_area_set (struct em28xx*,int ,int,int,int) ;
 int em28xx_scaler_set (struct em28xx*,int ,int ) ;
 int em28xx_set_outfmt (struct em28xx*) ;
 int em28xx_vbi_supported (struct em28xx*) ;
 int norm_maxh (struct em28xx*) ;
 int norm_maxw (struct em28xx*) ;

__attribute__((used)) static int em28xx_resolution_set(struct em28xx *dev)
{
 struct em28xx_v4l2 *v4l2 = dev->v4l2;
 int width = norm_maxw(dev);
 int height = norm_maxh(dev);


 v4l2->vbi_width = 720;
 if (v4l2->norm & V4L2_STD_525_60)
  v4l2->vbi_height = 12;
 else
  v4l2->vbi_height = 18;

 em28xx_set_outfmt(dev);

 em28xx_accumulator_set(dev, 1, (width - 4) >> 2, 1, (height - 4) >> 2);
 if (em28xx_vbi_supported(dev) == 1)
  em28xx_capture_area_set(dev, 0, 2, width, height);
 else
  em28xx_capture_area_set(dev, 0, 0, width, height);

 return em28xx_scaler_set(dev, v4l2->hscale, v4l2->vscale);
}
