
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_line {int dummy; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 struct v4l2_mbus_framefmt* __vfe_get_format (struct vfe_line*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct vfe_line* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int vfe_get_format(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct vfe_line *line = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 format = __vfe_get_format(line, cfg, fmt->pad, fmt->which);
 if (format == ((void*)0))
  return -EINVAL;

 fmt->format = *format;

 return 0;
}
