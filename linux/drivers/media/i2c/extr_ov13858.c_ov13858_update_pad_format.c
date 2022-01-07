
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int field; int code; int height; int width; } ;
struct v4l2_subdev_format {TYPE_1__ format; } ;
struct ov13858_mode {int height; int width; } ;


 int MEDIA_BUS_FMT_SGRBG10_1X10 ;
 int V4L2_FIELD_NONE ;

__attribute__((used)) static void ov13858_update_pad_format(const struct ov13858_mode *mode,
          struct v4l2_subdev_format *fmt)
{
 fmt->format.width = mode->width;
 fmt->format.height = mode->height;
 fmt->format.code = MEDIA_BUS_FMT_SGRBG10_1X10;
 fmt->format.field = V4L2_FIELD_NONE;
}
