
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; int pad; int format; } ;
struct imx258 {int cur_mode; int sd; } ;


 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int imx258_update_pad_format (int ,struct v4l2_subdev_format*) ;
 int * v4l2_subdev_get_try_format (int *,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int __imx258_get_pad_format(struct imx258 *imx258,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *fmt)
{
 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY)
  fmt->format = *v4l2_subdev_get_try_format(&imx258->sd, cfg,
         fmt->pad);
 else
  imx258_update_pad_format(imx258->cur_mode, fmt);

 return 0;
}
