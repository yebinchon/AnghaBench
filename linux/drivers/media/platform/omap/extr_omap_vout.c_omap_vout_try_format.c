
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_pix_format {int height; int width; scalar_t__ pixelformat; int bytesperline; int sizeimage; void* colorspace; int field; } ;
struct TYPE_2__ {scalar_t__ pixelformat; } ;


 int NUM_OUTPUT_FORMATS ;
 int RGB24_BPP ;
 int RGB32_BPP ;
 int RGB565_BPP ;
 void* V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;







 scalar_t__ VID_MAX_HEIGHT ;
 scalar_t__ VID_MAX_WIDTH ;
 scalar_t__ VID_MIN_HEIGHT ;
 scalar_t__ VID_MIN_WIDTH ;
 int YUYV_BPP ;
 void* clamp (int,int ,int ) ;
 TYPE_1__* omap_formats ;

__attribute__((used)) static int omap_vout_try_format(struct v4l2_pix_format *pix)
{
 int ifmt, bpp = 0;

 pix->height = clamp(pix->height, (u32)VID_MIN_HEIGHT,
      (u32)VID_MAX_HEIGHT);
 pix->width = clamp(pix->width, (u32)VID_MIN_WIDTH, (u32)VID_MAX_WIDTH);

 for (ifmt = 0; ifmt < NUM_OUTPUT_FORMATS; ifmt++) {
  if (pix->pixelformat == omap_formats[ifmt].pixelformat)
   break;
 }

 if (ifmt == NUM_OUTPUT_FORMATS)
  ifmt = 0;

 pix->pixelformat = omap_formats[ifmt].pixelformat;
 pix->field = V4L2_FIELD_NONE;

 switch (pix->pixelformat) {
 case 128:
 case 129:
 default:
  pix->colorspace = V4L2_COLORSPACE_SRGB;
  bpp = YUYV_BPP;
  break;
 case 131:
 case 130:
  pix->colorspace = V4L2_COLORSPACE_SRGB;
  bpp = RGB565_BPP;
  break;
 case 133:
  pix->colorspace = V4L2_COLORSPACE_SRGB;
  bpp = RGB24_BPP;
  break;
 case 132:
 case 134:
  pix->colorspace = V4L2_COLORSPACE_SRGB;
  bpp = RGB32_BPP;
  break;
 }
 pix->bytesperline = pix->width * bpp;
 pix->sizeimage = pix->bytesperline * pix->height;

 return bpp;
}
