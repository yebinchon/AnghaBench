
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {int which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct csiphy_device {int dummy; } ;


 int EINVAL ;
 int MSM_CSIPHY_PAD_SINK ;
 int MSM_CSIPHY_PAD_SRC ;
 struct v4l2_mbus_framefmt* __csiphy_get_format (struct csiphy_device*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int csiphy_try_format (struct csiphy_device*,struct v4l2_subdev_pad_config*,int ,struct v4l2_mbus_framefmt*,int ) ;
 struct csiphy_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csiphy_set_format(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *fmt)
{
 struct csiphy_device *csiphy = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 format = __csiphy_get_format(csiphy, cfg, fmt->pad, fmt->which);
 if (format == ((void*)0))
  return -EINVAL;

 csiphy_try_format(csiphy, cfg, fmt->pad, &fmt->format, fmt->which);
 *format = fmt->format;


 if (fmt->pad == MSM_CSIPHY_PAD_SINK) {
  format = __csiphy_get_format(csiphy, cfg, MSM_CSIPHY_PAD_SRC,
          fmt->which);

  *format = fmt->format;
  csiphy_try_format(csiphy, cfg, MSM_CSIPHY_PAD_SRC, format,
      fmt->which);
 }

 return 0;
}
