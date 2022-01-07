
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int check_cfg (int ,struct v4l2_subdev_pad_config*) ;
 scalar_t__ check_pad (struct v4l2_subdev*,int ) ;
 scalar_t__ check_which (int ) ;

__attribute__((used)) static inline int check_format(struct v4l2_subdev *sd,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_format *format)
{
 if (!format)
  return -EINVAL;

 return check_which(format->which) ? : check_pad(sd, format->pad) ? :
        check_cfg(format->which, cfg);
}
