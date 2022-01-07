
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_uds {int entity; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int field; void* height; void* width; int code; } ;


 int MEDIA_BUS_FMT_ARGB8888_1X32 ;
 int MEDIA_BUS_FMT_AYUV8_1X32 ;
 unsigned int UDS_MAX_SIZE ;
 unsigned int UDS_MIN_SIZE ;


 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 void* clamp (void*,unsigned int,unsigned int) ;
 int uds_output_limits (void*,unsigned int*,unsigned int*) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (int *,struct v4l2_subdev_pad_config*,int const) ;

__attribute__((used)) static void uds_try_format(struct vsp1_uds *uds,
      struct v4l2_subdev_pad_config *config,
      unsigned int pad, struct v4l2_mbus_framefmt *fmt)
{
 struct v4l2_mbus_framefmt *format;
 unsigned int minimum;
 unsigned int maximum;

 switch (pad) {
 case 129:

  if (fmt->code != MEDIA_BUS_FMT_ARGB8888_1X32 &&
      fmt->code != MEDIA_BUS_FMT_AYUV8_1X32)
   fmt->code = MEDIA_BUS_FMT_AYUV8_1X32;

  fmt->width = clamp(fmt->width, UDS_MIN_SIZE, UDS_MAX_SIZE);
  fmt->height = clamp(fmt->height, UDS_MIN_SIZE, UDS_MAX_SIZE);
  break;

 case 128:

  format = vsp1_entity_get_pad_format(&uds->entity, config,
          129);
  fmt->code = format->code;

  uds_output_limits(format->width, &minimum, &maximum);
  fmt->width = clamp(fmt->width, minimum, maximum);
  uds_output_limits(format->height, &minimum, &maximum);
  fmt->height = clamp(fmt->height, minimum, maximum);
  break;
 }

 fmt->field = V4L2_FIELD_NONE;
 fmt->colorspace = V4L2_COLORSPACE_SRGB;
}
