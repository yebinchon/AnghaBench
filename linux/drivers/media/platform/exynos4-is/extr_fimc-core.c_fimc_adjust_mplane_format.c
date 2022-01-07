
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_plane_pix_format {int bytesperline; int sizeimage; } ;
struct v4l2_pix_format_mplane {int num_planes; int height; int width; struct v4l2_plane_pix_format* plane_fmt; int pixelformat; int field; int colorspace; } ;
struct fimc_fmt {int memplanes; int colplanes; int* depth; int fourcc; } ;


 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;
 int max (int,int ) ;
 int roundup (int,int) ;
 scalar_t__ tiled_fmt (struct fimc_fmt*) ;

void fimc_adjust_mplane_format(struct fimc_fmt *fmt, u32 width, u32 height,
          struct v4l2_pix_format_mplane *pix)
{
 u32 bytesperline = 0;
 int i;

 pix->colorspace = V4L2_COLORSPACE_JPEG;
 pix->field = V4L2_FIELD_NONE;
 pix->num_planes = fmt->memplanes;
 pix->pixelformat = fmt->fourcc;
 pix->height = height;
 pix->width = width;

 for (i = 0; i < pix->num_planes; ++i) {
  struct v4l2_plane_pix_format *plane_fmt = &pix->plane_fmt[i];
  u32 bpl = plane_fmt->bytesperline;
  u32 sizeimage;

  if (fmt->colplanes > 1 && (bpl == 0 || bpl < pix->width))
   bpl = pix->width;

  if (fmt->colplanes == 1 &&
      (bpl == 0 || ((bpl * 8) / fmt->depth[i]) < pix->width))
   bpl = (pix->width * fmt->depth[0]) / 8;






  if (i == 0)
   bytesperline = bpl;
  else if (i == 1 && fmt->memplanes == 3)
   bytesperline /= 2;

  plane_fmt->bytesperline = bytesperline;
  sizeimage = pix->width * pix->height * fmt->depth[i] / 8;


  if (tiled_fmt(fmt)) {

   u32 row_size = plane_fmt->bytesperline * 32;

   sizeimage = roundup(sizeimage, row_size);
  }

  plane_fmt->sizeimage = max(sizeimage, plane_fmt->sizeimage);
 }
}
