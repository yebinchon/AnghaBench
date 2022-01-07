
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;


 scalar_t__ CSI2TX_PAD_SOURCE ;
 int EINVAL ;
 struct v4l2_mbus_framefmt* __csi2tx_get_pad_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;

__attribute__((used)) static int csi2tx_get_pad_format(struct v4l2_subdev *subdev,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 const struct v4l2_mbus_framefmt *format;


 if (fmt->pad == CSI2TX_PAD_SOURCE)
  return -EINVAL;

 format = __csi2tx_get_pad_format(subdev, cfg, fmt);
 if (!format)
  return -EINVAL;

 fmt->format = *format;

 return 0;
}
