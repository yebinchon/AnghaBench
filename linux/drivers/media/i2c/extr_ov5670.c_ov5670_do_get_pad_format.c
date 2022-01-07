
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; int pad; int format; } ;
struct ov5670 {int cur_mode; int sd; } ;


 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int ov5670_update_pad_format (int ,struct v4l2_subdev_format*) ;
 int * v4l2_subdev_get_try_format (int *,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int ov5670_do_get_pad_format(struct ov5670 *ov5670,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *fmt)
{
 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY)
  fmt->format = *v4l2_subdev_get_try_format(&ov5670->sd, cfg,
         fmt->pad);
 else
  ov5670_update_pad_format(ov5670->cur_mode, fmt);

 return 0;
}
