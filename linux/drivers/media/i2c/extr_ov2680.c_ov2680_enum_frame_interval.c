
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_fract {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval_enum {scalar_t__ index; scalar_t__ width; scalar_t__ height; scalar_t__ which; struct v4l2_fract interval; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int OV2680_FRAME_RATE ;
 scalar_t__ OV2680_HEIGHT_MAX ;
 scalar_t__ OV2680_MODE_MAX ;
 scalar_t__ OV2680_WIDTH_MAX ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;

__attribute__((used)) static int ov2680_enum_frame_interval(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_frame_interval_enum *fie)
{
 struct v4l2_fract tpf;

 if (fie->index >= OV2680_MODE_MAX || fie->width > OV2680_WIDTH_MAX ||
     fie->height > OV2680_HEIGHT_MAX ||
     fie->which > V4L2_SUBDEV_FORMAT_ACTIVE)
  return -EINVAL;

 tpf.denominator = OV2680_FRAME_RATE;
 tpf.numerator = 1;

 fie->interval = tpf;

 return 0;
}
