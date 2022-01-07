
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_rect {int dummy; } ;
struct mt9t001 {struct v4l2_rect crop; int subdev; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;




 struct v4l2_rect* v4l2_subdev_get_try_crop (int *,struct v4l2_subdev_pad_config*,unsigned int) ;

__attribute__((used)) static struct v4l2_rect *
__mt9t001_get_pad_crop(struct mt9t001 *mt9t001, struct v4l2_subdev_pad_config *cfg,
         unsigned int pad, enum v4l2_subdev_format_whence which)
{
 switch (which) {
 case 128:
  return v4l2_subdev_get_try_crop(&mt9t001->subdev, cfg, pad);
 case 129:
  return &mt9t001->crop;
 default:
  return ((void*)0);
 }
}
