
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_rect {int dummy; } ;
struct s5k6aa {int sd; struct v4l2_rect ccd_rect; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 int WARN_ON (int) ;
 struct v4l2_rect* v4l2_subdev_get_try_crop (int *,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static struct v4l2_rect *
__s5k6aa_get_crop_rect(struct s5k6aa *s5k6aa, struct v4l2_subdev_pad_config *cfg,
         enum v4l2_subdev_format_whence which)
{
 if (which == V4L2_SUBDEV_FORMAT_ACTIVE)
  return &s5k6aa->ccd_rect;

 WARN_ON(which != V4L2_SUBDEV_FORMAT_TRY);
 return v4l2_subdev_get_try_crop(&s5k6aa->sd, cfg, 0);
}
