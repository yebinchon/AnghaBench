
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx_v4l2 {unsigned int width; unsigned int height; int vscale; int hscale; struct em28xx_fmt* format; } ;
struct em28xx_fmt {int dummy; } ;
struct em28xx {struct em28xx_v4l2* v4l2; } ;


 int EINVAL ;
 int em28xx_resolution_set (struct em28xx*) ;
 struct em28xx_fmt* format_by_fourcc (unsigned int) ;
 int size_to_scale (struct em28xx*,unsigned int,unsigned int,int *,int *) ;

__attribute__((used)) static int em28xx_set_video_format(struct em28xx *dev, unsigned int fourcc,
       unsigned int width, unsigned int height)
{
 struct em28xx_fmt *fmt;
 struct em28xx_v4l2 *v4l2 = dev->v4l2;

 fmt = format_by_fourcc(fourcc);
 if (!fmt)
  return -EINVAL;

 v4l2->format = fmt;
 v4l2->width = width;
 v4l2->height = height;


 size_to_scale(dev, v4l2->width, v4l2->height,
        &v4l2->hscale, &v4l2->vscale);

 em28xx_resolution_set(dev);

 return 0;
}
