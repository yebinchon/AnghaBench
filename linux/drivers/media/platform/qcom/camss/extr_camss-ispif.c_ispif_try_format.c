
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {void* colorspace; int field; void* height; void* width; int code; } ;
struct ispif_line {unsigned int nformats; int * formats; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;


 int MEDIA_BUS_FMT_UYVY8_2X8 ;


 void* V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 struct v4l2_mbus_framefmt* __ispif_get_format (struct ispif_line*,struct v4l2_subdev_pad_config*,int const,int) ;
 void* clamp_t (int ,void*,int,int) ;
 int u32 ;

__attribute__((used)) static void ispif_try_format(struct ispif_line *line,
        struct v4l2_subdev_pad_config *cfg,
        unsigned int pad,
        struct v4l2_mbus_framefmt *fmt,
        enum v4l2_subdev_format_whence which)
{
 unsigned int i;

 switch (pad) {
 case 129:


  for (i = 0; i < line->nformats; i++)
   if (fmt->code == line->formats[i])
    break;


  if (i >= line->nformats)
   fmt->code = MEDIA_BUS_FMT_UYVY8_2X8;

  fmt->width = clamp_t(u32, fmt->width, 1, 8191);
  fmt->height = clamp_t(u32, fmt->height, 1, 8191);

  fmt->field = V4L2_FIELD_NONE;
  fmt->colorspace = V4L2_COLORSPACE_SRGB;

  break;

 case 128:


  *fmt = *__ispif_get_format(line, cfg, 129,
        which);

  break;
 }

 fmt->colorspace = V4L2_COLORSPACE_SRGB;
}
