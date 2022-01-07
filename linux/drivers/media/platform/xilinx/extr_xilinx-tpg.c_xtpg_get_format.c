
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtpg_device {int dummy; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int which; int pad; int format; } ;
struct v4l2_subdev {int dummy; } ;


 int * __xtpg_get_pad_format (struct xtpg_device*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct xtpg_device* to_tpg (struct v4l2_subdev*) ;

__attribute__((used)) static int xtpg_get_format(struct v4l2_subdev *subdev,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *fmt)
{
 struct xtpg_device *xtpg = to_tpg(subdev);

 fmt->format = *__xtpg_get_pad_format(xtpg, cfg, fmt->pad, fmt->which);

 return 0;
}
