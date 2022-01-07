
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_sru {int entity; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {unsigned int width; unsigned int height; int colorspace; int field; int code; } ;


 int MEDIA_BUS_FMT_ARGB8888_1X32 ;
 int MEDIA_BUS_FMT_AYUV8_1X32 ;
 int SRU_MAX_SIZE ;
 int SRU_MIN_SIZE ;


 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 void* clamp (unsigned int,int ,int) ;
 unsigned int min (unsigned int,int) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (int *,struct v4l2_subdev_pad_config*,int const) ;

__attribute__((used)) static void sru_try_format(struct vsp1_sru *sru,
      struct v4l2_subdev_pad_config *config,
      unsigned int pad, struct v4l2_mbus_framefmt *fmt)
{
 struct v4l2_mbus_framefmt *format;
 unsigned int input_area;
 unsigned int output_area;

 switch (pad) {
 case 129:

  if (fmt->code != MEDIA_BUS_FMT_ARGB8888_1X32 &&
      fmt->code != MEDIA_BUS_FMT_AYUV8_1X32)
   fmt->code = MEDIA_BUS_FMT_AYUV8_1X32;

  fmt->width = clamp(fmt->width, SRU_MIN_SIZE, SRU_MAX_SIZE);
  fmt->height = clamp(fmt->height, SRU_MIN_SIZE, SRU_MAX_SIZE);
  break;

 case 128:

  format = vsp1_entity_get_pad_format(&sru->entity, config,
          129);
  fmt->code = format->code;
  input_area = format->width * format->height;
  output_area = min(fmt->width, SRU_MAX_SIZE)
       * min(fmt->height, SRU_MAX_SIZE);

  if (fmt->width <= SRU_MAX_SIZE / 2 &&
      fmt->height <= SRU_MAX_SIZE / 2 &&
      output_area > input_area * 9 / 4) {
   fmt->width = format->width * 2;
   fmt->height = format->height * 2;
  } else {
   fmt->width = format->width;
   fmt->height = format->height;
  }
  break;
 }

 fmt->field = V4L2_FIELD_NONE;
 fmt->colorspace = V4L2_COLORSPACE_SRGB;
}
