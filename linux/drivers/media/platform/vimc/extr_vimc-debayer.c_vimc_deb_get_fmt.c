
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct vimc_deb_device {int src_code; TYPE_1__ sink_fmt; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; TYPE_1__ format; int pad; } ;
struct v4l2_subdev {int dummy; } ;


 scalar_t__ IS_SRC (int ) ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 struct vimc_deb_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 TYPE_1__* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int vimc_deb_get_fmt(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *fmt)
{
 struct vimc_deb_device *vdeb = v4l2_get_subdevdata(sd);


 fmt->format = fmt->which == V4L2_SUBDEV_FORMAT_TRY ?
        *v4l2_subdev_get_try_format(sd, cfg, 0) :
        vdeb->sink_fmt;


 if (IS_SRC(fmt->pad))
  fmt->format.code = vdeb->src_code;

 return 0;
}
