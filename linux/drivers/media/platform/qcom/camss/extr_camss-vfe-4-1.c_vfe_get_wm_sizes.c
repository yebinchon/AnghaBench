
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct v4l2_pix_format_mplane {int pixelformat; int width; int height; TYPE_1__* plane_fmt; } ;
struct TYPE_2__ {int bytesperline; } ;







__attribute__((used)) static void vfe_get_wm_sizes(struct v4l2_pix_format_mplane *pix, u8 plane,
        u16 *width, u16 *height, u16 *bytesperline)
{
 switch (pix->pixelformat) {
 case 131:
 case 129:
  *width = pix->width;
  *height = pix->height;
  *bytesperline = pix->plane_fmt[0].bytesperline;
  if (plane == 1)
   *height /= 2;
  break;
 case 130:
 case 128:
  *width = pix->width;
  *height = pix->height;
  *bytesperline = pix->plane_fmt[0].bytesperline;
  break;
 }
}
