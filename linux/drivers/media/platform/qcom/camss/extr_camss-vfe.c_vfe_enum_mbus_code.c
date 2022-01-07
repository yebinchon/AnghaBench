
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_line {size_t nformats; TYPE_1__* formats; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ pad; size_t index; int code; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct TYPE_2__ {int code; } ;


 int EINVAL ;
 scalar_t__ MSM_VFE_PAD_SINK ;
 struct v4l2_mbus_framefmt* __vfe_get_format (struct vfe_line*,struct v4l2_subdev_pad_config*,scalar_t__,int ) ;
 struct vfe_line* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int vfe_src_pad_code (struct vfe_line*,int ,size_t,int ) ;

__attribute__((used)) static int vfe_enum_mbus_code(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_mbus_code_enum *code)
{
 struct vfe_line *line = v4l2_get_subdevdata(sd);

 if (code->pad == MSM_VFE_PAD_SINK) {
  if (code->index >= line->nformats)
   return -EINVAL;

  code->code = line->formats[code->index].code;
 } else {
  struct v4l2_mbus_framefmt *sink_fmt;

  sink_fmt = __vfe_get_format(line, cfg, MSM_VFE_PAD_SINK,
         code->which);

  code->code = vfe_src_pad_code(line, sink_fmt->code,
           code->index, 0);
  if (!code->code)
   return -EINVAL;
 }

 return 0;
}
