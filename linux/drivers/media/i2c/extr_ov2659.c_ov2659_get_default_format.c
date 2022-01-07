
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int field; int code; int colorspace; int height; int width; } ;
struct TYPE_4__ {int code; } ;
struct TYPE_3__ {int height; int width; } ;


 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 TYPE_2__* ov2659_formats ;
 TYPE_1__* ov2659_framesizes ;

__attribute__((used)) static void ov2659_get_default_format(struct v4l2_mbus_framefmt *format)
{
 format->width = ov2659_framesizes[2].width;
 format->height = ov2659_framesizes[2].height;
 format->colorspace = V4L2_COLORSPACE_SRGB;
 format->code = ov2659_formats[0].code;
 format->field = V4L2_FIELD_NONE;
}
