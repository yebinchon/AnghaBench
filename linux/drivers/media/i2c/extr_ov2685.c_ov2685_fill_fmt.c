
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int field; int height; int width; int code; } ;
struct ov2685_mode {int height; int width; } ;


 int MEDIA_BUS_FMT_SBGGR10_1X10 ;
 int V4L2_FIELD_NONE ;

__attribute__((used)) static void ov2685_fill_fmt(const struct ov2685_mode *mode,
       struct v4l2_mbus_framefmt *fmt)
{
 fmt->code = MEDIA_BUS_FMT_SBGGR10_1X10;
 fmt->width = mode->width;
 fmt->height = mode->height;
 fmt->field = V4L2_FIELD_NONE;
}
