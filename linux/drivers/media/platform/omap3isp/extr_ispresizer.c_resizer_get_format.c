
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct isp_res_device {int dummy; } ;


 int EINVAL ;
 struct v4l2_mbus_framefmt* __resizer_get_format (struct isp_res_device*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct isp_res_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int resizer_get_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *fmt)
{
 struct isp_res_device *res = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 format = __resizer_get_format(res, cfg, fmt->pad, fmt->which);
 if (format == ((void*)0))
  return -EINVAL;

 fmt->format = *format;
 return 0;
}
