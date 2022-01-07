
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int field; void* code; void* height; void* width; } ;
struct isp_ccp2_device {int input; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;


 int CCP2_INPUT_MEMORY ;
 int CCP2_INPUT_SENSOR ;


 int ISPCCP2_DAT_SIZE_MAX ;
 int ISPCCP2_DAT_SIZE_MIN ;
 int ISPCCP2_DAT_START_MAX ;
 int ISPCCP2_DAT_START_MIN ;
 int ISPCCP2_LCM_HSIZE_COUNT_MAX ;
 int ISPCCP2_LCM_HSIZE_COUNT_MIN ;
 int ISPCCP2_LCM_VSIZE_MAX ;
 int ISPCCP2_LCM_VSIZE_MIN ;
 void* MEDIA_BUS_FMT_SGRBG10_1X10 ;
 void* MEDIA_BUS_FMT_SGRBG10_DPCM8_1X8 ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 struct v4l2_mbus_framefmt* __ccp2_get_format (struct isp_ccp2_device*,struct v4l2_subdev_pad_config*,int const,int) ;
 void* clamp_t (int ,void*,int ,int ) ;
 int memcpy (struct v4l2_mbus_framefmt*,struct v4l2_mbus_framefmt*,int) ;
 int u32 ;

__attribute__((used)) static void ccp2_try_format(struct isp_ccp2_device *ccp2,
          struct v4l2_subdev_pad_config *cfg, unsigned int pad,
          struct v4l2_mbus_framefmt *fmt,
          enum v4l2_subdev_format_whence which)
{
 struct v4l2_mbus_framefmt *format;

 switch (pad) {
 case 129:
  if (fmt->code != MEDIA_BUS_FMT_SGRBG10_DPCM8_1X8)
   fmt->code = MEDIA_BUS_FMT_SGRBG10_1X10;

  if (ccp2->input == CCP2_INPUT_SENSOR) {
   fmt->width = clamp_t(u32, fmt->width,
          ISPCCP2_DAT_START_MIN,
          ISPCCP2_DAT_START_MAX);
   fmt->height = clamp_t(u32, fmt->height,
           ISPCCP2_DAT_SIZE_MIN,
           ISPCCP2_DAT_SIZE_MAX);
  } else if (ccp2->input == CCP2_INPUT_MEMORY) {
   fmt->width = clamp_t(u32, fmt->width,
          ISPCCP2_LCM_HSIZE_COUNT_MIN,
          ISPCCP2_LCM_HSIZE_COUNT_MAX);
   fmt->height = clamp_t(u32, fmt->height,
           ISPCCP2_LCM_VSIZE_MIN,
           ISPCCP2_LCM_VSIZE_MAX);
  }
  break;

 case 128:





  format = __ccp2_get_format(ccp2, cfg, 129, which);
  memcpy(fmt, format, sizeof(*fmt));
  fmt->code = MEDIA_BUS_FMT_SGRBG10_1X10;
  break;
 }

 fmt->field = V4L2_FIELD_NONE;
 fmt->colorspace = V4L2_COLORSPACE_SRGB;
}
