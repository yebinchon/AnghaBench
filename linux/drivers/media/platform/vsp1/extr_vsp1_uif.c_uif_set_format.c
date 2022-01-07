
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int UIF_MAX_SIZE ;
 int UIF_MIN_SIZE ;
 int uif_codes ;
 int vsp1_subdev_set_pad_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int uif_set_format(struct v4l2_subdev *subdev,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *fmt)
{
 return vsp1_subdev_set_pad_format(subdev, cfg, fmt, uif_codes,
       ARRAY_SIZE(uif_codes),
       UIF_MIN_SIZE, UIF_MIN_SIZE,
       UIF_MAX_SIZE, UIF_MAX_SIZE);
}
