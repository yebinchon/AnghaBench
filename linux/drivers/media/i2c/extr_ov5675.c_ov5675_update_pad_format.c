
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int field; int code; int height; int width; } ;
struct ov5675_mode {int height; int width; } ;


 int MEDIA_BUS_FMT_SGRBG10_1X10 ;
 int V4L2_FIELD_NONE ;

__attribute__((used)) static void ov5675_update_pad_format(const struct ov5675_mode *mode,
         struct v4l2_mbus_framefmt *fmt)
{
 fmt->width = mode->width;
 fmt->height = mode->height;
 fmt->code = MEDIA_BUS_FMT_SGRBG10_1X10;
 fmt->field = V4L2_FIELD_NONE;
}
