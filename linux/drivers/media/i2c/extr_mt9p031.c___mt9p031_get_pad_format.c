
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct mt9p031 {struct v4l2_mbus_framefmt format; int subdev; } ;




 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (int *,struct v4l2_subdev_pad_config*,unsigned int) ;

__attribute__((used)) static struct v4l2_mbus_framefmt *
__mt9p031_get_pad_format(struct mt9p031 *mt9p031, struct v4l2_subdev_pad_config *cfg,
    unsigned int pad, u32 which)
{
 switch (which) {
 case 128:
  return v4l2_subdev_get_try_format(&mt9p031->subdev, cfg, pad);
 case 129:
  return &mt9p031->format;
 default:
  return ((void*)0);
 }
}
