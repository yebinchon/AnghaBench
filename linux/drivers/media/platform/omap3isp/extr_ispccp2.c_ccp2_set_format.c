
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {int which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct isp_ccp2_device {int dummy; } ;


 int CCP2_PAD_SINK ;
 int CCP2_PAD_SOURCE ;
 int EINVAL ;
 struct v4l2_mbus_framefmt* __ccp2_get_format (struct isp_ccp2_device*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int ccp2_try_format (struct isp_ccp2_device*,struct v4l2_subdev_pad_config*,int ,struct v4l2_mbus_framefmt*,int ) ;
 struct isp_ccp2_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ccp2_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *fmt)
{
 struct isp_ccp2_device *ccp2 = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 format = __ccp2_get_format(ccp2, cfg, fmt->pad, fmt->which);
 if (format == ((void*)0))
  return -EINVAL;

 ccp2_try_format(ccp2, cfg, fmt->pad, &fmt->format, fmt->which);
 *format = fmt->format;


 if (fmt->pad == CCP2_PAD_SINK) {
  format = __ccp2_get_format(ccp2, cfg, CCP2_PAD_SOURCE,
        fmt->which);
  *format = fmt->format;
  ccp2_try_format(ccp2, cfg, CCP2_PAD_SOURCE, format, fmt->which);
 }

 return 0;
}
