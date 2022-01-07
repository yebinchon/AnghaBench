
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int entity; } ;
struct media_link {int dummy; } ;
struct isp_res_device {int dummy; } ;
struct isp_pipeline {int max_rate; } ;


 int omap3isp_resizer_max_rate (struct isp_res_device*,int *) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;
 struct isp_res_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_subdev_link_validate_default (struct v4l2_subdev*,struct media_link*,struct v4l2_subdev_format*,struct v4l2_subdev_format*) ;

__attribute__((used)) static int resizer_link_validate(struct v4l2_subdev *sd,
     struct media_link *link,
     struct v4l2_subdev_format *source_fmt,
     struct v4l2_subdev_format *sink_fmt)
{
 struct isp_res_device *res = v4l2_get_subdevdata(sd);
 struct isp_pipeline *pipe = to_isp_pipeline(&sd->entity);

 omap3isp_resizer_max_rate(res, &pipe->max_rate);

 return v4l2_subdev_link_validate_default(sd, link,
       source_fmt, sink_fmt);
}
