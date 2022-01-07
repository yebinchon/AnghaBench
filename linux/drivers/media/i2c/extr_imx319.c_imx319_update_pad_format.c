
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int field; int code; int height; int width; } ;
struct v4l2_subdev_format {TYPE_1__ format; } ;
struct imx319_mode {int height; int width; } ;
struct imx319 {int dummy; } ;


 int V4L2_FIELD_NONE ;
 int imx319_get_format_code (struct imx319*) ;

__attribute__((used)) static void imx319_update_pad_format(struct imx319 *imx319,
         const struct imx319_mode *mode,
         struct v4l2_subdev_format *fmt)
{
 fmt->format.width = mode->width;
 fmt->format.height = mode->height;
 fmt->format.code = imx319_get_format_code(imx319);
 fmt->format.field = V4L2_FIELD_NONE;
}
