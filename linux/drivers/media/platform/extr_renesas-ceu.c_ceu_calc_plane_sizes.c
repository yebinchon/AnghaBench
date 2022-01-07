
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format_mplane {int pixelformat; int num_planes; int width; unsigned int height; int * plane_fmt; } ;
struct ceu_fmt {int bpp; } ;
struct ceu_device {int dummy; } ;
 int ceu_update_plane_sizes (int *,unsigned int,unsigned int) ;

__attribute__((used)) static void ceu_calc_plane_sizes(struct ceu_device *ceudev,
     const struct ceu_fmt *ceu_fmt,
     struct v4l2_pix_format_mplane *pix)
{
 unsigned int bpl, szimage;

 switch (pix->pixelformat) {
 case 129:
 case 131:
 case 128:
 case 130:
  pix->num_planes = 1;
  bpl = pix->width * ceu_fmt->bpp / 8;
  szimage = pix->height * bpl;
  ceu_update_plane_sizes(&pix->plane_fmt[0], bpl, szimage);
  break;

 case 135:
 case 133:
  pix->num_planes = 2;
  bpl = pix->width;
  szimage = pix->height * pix->width;
  ceu_update_plane_sizes(&pix->plane_fmt[0], bpl, szimage);
  ceu_update_plane_sizes(&pix->plane_fmt[1], bpl, szimage / 2);
  break;

 case 134:
 case 132:
 default:
  pix->num_planes = 2;
  bpl = pix->width;
  szimage = pix->height * pix->width;
  ceu_update_plane_sizes(&pix->plane_fmt[0], bpl, szimage);
  ceu_update_plane_sizes(&pix->plane_fmt[1], bpl, szimage);
  break;
 }
}
