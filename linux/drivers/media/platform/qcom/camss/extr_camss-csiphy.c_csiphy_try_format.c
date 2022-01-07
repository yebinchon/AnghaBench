
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int field; void* height; void* width; int code; } ;
struct csiphy_device {unsigned int nformats; TYPE_1__* formats; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;
struct TYPE_2__ {int code; } ;


 int MEDIA_BUS_FMT_UYVY8_2X8 ;
 int MSM_CSID_PAD_SINK ;


 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 struct v4l2_mbus_framefmt* __csiphy_get_format (struct csiphy_device*,struct v4l2_subdev_pad_config*,int ,int) ;
 void* clamp_t (int ,void*,int,int) ;
 int u32 ;

__attribute__((used)) static void csiphy_try_format(struct csiphy_device *csiphy,
         struct v4l2_subdev_pad_config *cfg,
         unsigned int pad,
         struct v4l2_mbus_framefmt *fmt,
         enum v4l2_subdev_format_whence which)
{
 unsigned int i;

 switch (pad) {
 case 129:


  for (i = 0; i < csiphy->nformats; i++)
   if (fmt->code == csiphy->formats[i].code)
    break;


  if (i >= csiphy->nformats)
   fmt->code = MEDIA_BUS_FMT_UYVY8_2X8;

  fmt->width = clamp_t(u32, fmt->width, 1, 8191);
  fmt->height = clamp_t(u32, fmt->height, 1, 8191);

  fmt->field = V4L2_FIELD_NONE;
  fmt->colorspace = V4L2_COLORSPACE_SRGB;

  break;

 case 128:


  *fmt = *__csiphy_get_format(csiphy, cfg, MSM_CSID_PAD_SINK,
         which);

  break;
 }
}
