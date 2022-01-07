
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_fract {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval_enum {scalar_t__ pad; size_t index; struct v4l2_fract interval; int height; int width; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5640_dev {int dummy; } ;


 int EINVAL ;
 size_t OV5640_NUM_FRAMERATES ;
 int * ov5640_framerates ;
 int ov5640_try_frame_interval (struct ov5640_dev*,struct v4l2_fract*,int ,int ) ;
 struct ov5640_dev* to_ov5640_dev (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5640_enum_frame_interval(
 struct v4l2_subdev *sd,
 struct v4l2_subdev_pad_config *cfg,
 struct v4l2_subdev_frame_interval_enum *fie)
{
 struct ov5640_dev *sensor = to_ov5640_dev(sd);
 struct v4l2_fract tpf;
 int ret;

 if (fie->pad != 0)
  return -EINVAL;
 if (fie->index >= OV5640_NUM_FRAMERATES)
  return -EINVAL;

 tpf.numerator = 1;
 tpf.denominator = ov5640_framerates[fie->index];

 ret = ov5640_try_frame_interval(sensor, &tpf,
     fie->width, fie->height);
 if (ret < 0)
  return -EINVAL;

 fie->interval = tpf;
 return 0;
}
