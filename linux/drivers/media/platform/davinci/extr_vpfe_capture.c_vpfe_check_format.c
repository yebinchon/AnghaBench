
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vpfe_pixel_format {scalar_t__ pixelformat; scalar_t__ bpp; } ;
struct TYPE_11__ {scalar_t__ active_pixels; scalar_t__ active_lines; int frame_format; } ;
struct TYPE_8__ {scalar_t__ pixelformat; int field; } ;
struct TYPE_9__ {TYPE_2__ pix; } ;
struct TYPE_10__ {TYPE_3__ fmt; } ;
struct vpfe_device {int v4l2_dev; TYPE_5__ std_info; TYPE_4__ fmt; } ;
struct v4l2_pix_format {scalar_t__ pixelformat; int field; int width; int height; int bytesperline; int sizeimage; } ;
struct TYPE_7__ {scalar_t__ (* enum_pix ) (scalar_t__*,int) ;} ;
struct TYPE_12__ {TYPE_1__ hw_ops; } ;


 int V4L2_FIELD_ANY ;



 scalar_t__ V4L2_PIX_FMT_NV12 ;
 TYPE_6__* ccdc_dev ;
 void* clamp (int,scalar_t__,scalar_t__) ;
 scalar_t__ stub1 (scalar_t__*,int) ;
 int v4l2_info (int *,char*,int,int,int,...) ;
 struct vpfe_pixel_format* vpfe_lookup_pix_format (scalar_t__) ;

__attribute__((used)) static const struct vpfe_pixel_format *
 vpfe_check_format(struct vpfe_device *vpfe_dev,
     struct v4l2_pix_format *pixfmt)
{
 u32 min_height = 1, min_width = 32, max_width, max_height;
 const struct vpfe_pixel_format *vpfe_pix_fmt;
 u32 pix;
 int temp, found;

 vpfe_pix_fmt = vpfe_lookup_pix_format(pixfmt->pixelformat);
 if (!vpfe_pix_fmt) {




  pixfmt->pixelformat = vpfe_dev->fmt.fmt.pix.pixelformat;
  vpfe_pix_fmt = vpfe_lookup_pix_format(pixfmt->pixelformat);
 }


 temp = 0;
 found = 0;
 while (ccdc_dev->hw_ops.enum_pix(&pix, temp) >= 0) {
  if (vpfe_pix_fmt->pixelformat == pix) {
   found = 1;
   break;
  }
  temp++;
 }

 if (!found) {

  pixfmt->pixelformat = vpfe_dev->fmt.fmt.pix.pixelformat;




  vpfe_pix_fmt = vpfe_lookup_pix_format(pixfmt->pixelformat);
 }


 if (pixfmt->field == V4L2_FIELD_ANY) {

  pixfmt->field = vpfe_dev->fmt.fmt.pix.field;
 }





 if (vpfe_dev->fmt.fmt.pix.field != pixfmt->field) {




  switch (pixfmt->field) {
  case 130:
  case 128:

   if (!vpfe_dev->std_info.frame_format)
    pixfmt->field = 129;
   break;
  case 129:
   if (vpfe_dev->std_info.frame_format)
    pixfmt->field = 130;
   break;

  default:

   pixfmt->field = vpfe_dev->fmt.fmt.pix.field;
   break;
  }
 }


 if (pixfmt->field == 130 ||
     pixfmt->field == 128)
  min_height = 2;

 max_width = vpfe_dev->std_info.active_pixels;
 max_height = vpfe_dev->std_info.active_lines;
 min_width /= vpfe_pix_fmt->bpp;

 v4l2_info(&vpfe_dev->v4l2_dev, "width = %d, height = %d, bpp = %d\n",
    pixfmt->width, pixfmt->height, vpfe_pix_fmt->bpp);

 pixfmt->width = clamp((pixfmt->width), min_width, max_width);
 pixfmt->height = clamp((pixfmt->height), min_height, max_height);


 if (pixfmt->field == 130)
  pixfmt->height &= (~1);




 pixfmt->bytesperline = (((pixfmt->width * vpfe_pix_fmt->bpp) + 31)
    & ~31);
 if (pixfmt->pixelformat == V4L2_PIX_FMT_NV12)
  pixfmt->sizeimage =
   pixfmt->bytesperline * pixfmt->height +
   ((pixfmt->bytesperline * pixfmt->height) >> 1);
 else
  pixfmt->sizeimage = pixfmt->bytesperline * pixfmt->height;

 v4l2_info(&vpfe_dev->v4l2_dev, "adjusted width = %d, height = %d, bpp = %d, bytesperline = %d, sizeimage = %d\n",
   pixfmt->width, pixfmt->height, vpfe_pix_fmt->bpp,
   pixfmt->bytesperline, pixfmt->sizeimage);
 return vpfe_pix_fmt;
}
