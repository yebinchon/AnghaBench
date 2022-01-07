
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval_enum {scalar_t__ index; TYPE_1__ interval; int height; int width; int code; } ;
struct v4l2_subdev {int dummy; } ;
struct imx214_mode {int height; int width; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int IMX214_FPS ;
 int IMX214_MBUS_CODE ;
 int height ;
 int imx214_modes ;
 struct imx214_mode* v4l2_find_nearest_size (int ,int ,int ,int ,int ,int ) ;
 int width ;

__attribute__((used)) static int imx214_enum_frame_interval(struct v4l2_subdev *subdev,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_frame_interval_enum *fie)
{
 const struct imx214_mode *mode;

 if (fie->index != 0)
  return -EINVAL;

 mode = v4l2_find_nearest_size(imx214_modes,
    ARRAY_SIZE(imx214_modes), width, height,
    fie->width, fie->height);

 fie->code = IMX214_MBUS_CODE;
 fie->width = mode->width;
 fie->height = mode->height;
 fie->interval.numerator = 1;
 fie->interval.denominator = IMX214_FPS;

 return 0;
}
