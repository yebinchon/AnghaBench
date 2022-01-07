
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {int which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ispif_line {int dummy; } ;


 int EINVAL ;
 int MSM_ISPIF_PAD_SINK ;
 int MSM_ISPIF_PAD_SRC ;
 struct v4l2_mbus_framefmt* __ispif_get_format (struct ispif_line*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int ispif_try_format (struct ispif_line*,struct v4l2_subdev_pad_config*,int ,struct v4l2_mbus_framefmt*,int ) ;
 struct ispif_line* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ispif_set_format(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *fmt)
{
 struct ispif_line *line = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 format = __ispif_get_format(line, cfg, fmt->pad, fmt->which);
 if (format == ((void*)0))
  return -EINVAL;

 ispif_try_format(line, cfg, fmt->pad, &fmt->format, fmt->which);
 *format = fmt->format;


 if (fmt->pad == MSM_ISPIF_PAD_SINK) {
  format = __ispif_get_format(line, cfg, MSM_ISPIF_PAD_SRC,
         fmt->which);

  *format = fmt->format;
  ispif_try_format(line, cfg, MSM_ISPIF_PAD_SRC, format,
     fmt->which);
 }

 return 0;
}
