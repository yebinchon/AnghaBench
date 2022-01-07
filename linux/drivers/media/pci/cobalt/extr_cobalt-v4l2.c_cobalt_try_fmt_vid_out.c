
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format {int width; int height; int pixelformat; int bytesperline; int sizeimage; int field; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;


 int COBALT_BYTES_PER_PIXEL_RGB32 ;
 int COBALT_BYTES_PER_PIXEL_YUYV ;
 int V4L2_FIELD_NONE ;


 void* max (int,int) ;

__attribute__((used)) static int cobalt_try_fmt_vid_out(struct file *file, void *priv_fh,
  struct v4l2_format *f)
{
 struct v4l2_pix_format *pix = &f->fmt.pix;


 if ((pix->width < 176) || (pix->height < 144)) {
  pix->width = 176;
  pix->height = 144;
 }

 if ((pix->width > 1920) || (pix->height > 1080)) {
  pix->width = 1920;
  pix->height = 1080;
 }


 pix->width &= ~0x3;


 pix->height &= ~0x1;

 switch (pix->pixelformat) {
 case 128:
 default:
  pix->bytesperline = max(pix->bytesperline & ~0x3,
    pix->width * COBALT_BYTES_PER_PIXEL_YUYV);
  pix->pixelformat = 128;
  break;
 case 129:
  pix->bytesperline = max(pix->bytesperline & ~0x3,
    pix->width * COBALT_BYTES_PER_PIXEL_RGB32);
  break;
 }

 pix->sizeimage = pix->bytesperline * pix->height;
 pix->field = V4L2_FIELD_NONE;

 return 0;
}
