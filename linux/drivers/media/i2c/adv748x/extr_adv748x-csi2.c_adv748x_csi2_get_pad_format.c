
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct adv748x_csi2 {struct v4l2_mbus_framefmt format; } ;


 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 struct adv748x_csi2* adv748x_sd_to_csi2 (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,unsigned int) ;

__attribute__((used)) static struct v4l2_mbus_framefmt *
adv748x_csi2_get_pad_format(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       unsigned int pad, u32 which)
{
 struct adv748x_csi2 *tx = adv748x_sd_to_csi2(sd);

 if (which == V4L2_SUBDEV_FORMAT_TRY)
  return v4l2_subdev_get_try_format(sd, cfg, pad);

 return &tx->format;
}
