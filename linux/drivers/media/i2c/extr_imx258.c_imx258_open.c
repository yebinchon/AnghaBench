
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int code; int height; int width; } ;
struct TYPE_2__ {int height; int width; } ;


 int MEDIA_BUS_FMT_SGRBG10_1X10 ;
 int V4L2_FIELD_NONE ;
 TYPE_1__* supported_modes ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int imx258_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 struct v4l2_mbus_framefmt *try_fmt =
  v4l2_subdev_get_try_format(sd, fh->pad, 0);


 try_fmt->width = supported_modes[0].width;
 try_fmt->height = supported_modes[0].height;
 try_fmt->code = MEDIA_BUS_FMT_SGRBG10_1X10;
 try_fmt->field = V4L2_FIELD_NONE;

 return 0;
}
