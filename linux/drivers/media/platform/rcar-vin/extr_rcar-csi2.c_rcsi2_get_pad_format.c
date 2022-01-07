
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; int format; } ;
struct v4l2_subdev {int dummy; } ;
struct rcar_csi2 {int mf; } ;


 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct rcar_csi2* sd_to_csi2 (struct v4l2_subdev*) ;
 int * v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int rcsi2_get_pad_format(struct v4l2_subdev *sd,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_format *format)
{
 struct rcar_csi2 *priv = sd_to_csi2(sd);

 if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE)
  format->format = priv->mf;
 else
  format->format = *v4l2_subdev_get_try_format(sd, cfg, 0);

 return 0;
}
