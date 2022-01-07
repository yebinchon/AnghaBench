
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_line {scalar_t__ id; } ;
struct v4l2_rect {int height; int width; } ;
struct v4l2_subdev_selection {scalar_t__ target; scalar_t__ pad; int which; struct v4l2_rect r; int member_0; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int height; int width; } ;
struct v4l2_subdev_format {TYPE_1__ format; scalar_t__ pad; int which; int member_0; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 scalar_t__ MSM_VFE_PAD_SINK ;
 scalar_t__ MSM_VFE_PAD_SRC ;
 scalar_t__ V4L2_SEL_TGT_COMPOSE ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 scalar_t__ VFE_LINE_PIX ;
 struct v4l2_rect* __vfe_get_compose (struct vfe_line*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_rect* __vfe_get_crop (struct vfe_line*,struct v4l2_subdev_pad_config*,int ) ;
 struct vfe_line* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int vfe_get_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 int vfe_set_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 int vfe_try_compose (struct vfe_line*,struct v4l2_subdev_pad_config*,struct v4l2_rect*,int ) ;
 int vfe_try_crop (struct vfe_line*,struct v4l2_subdev_pad_config*,struct v4l2_rect*,int ) ;

__attribute__((used)) static int vfe_set_selection(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_selection *sel)
{
 struct vfe_line *line = v4l2_get_subdevdata(sd);
 struct v4l2_rect *rect;
 int ret;

 if (line->id != VFE_LINE_PIX)
  return -EINVAL;

 if (sel->target == V4L2_SEL_TGT_COMPOSE &&
  sel->pad == MSM_VFE_PAD_SINK) {
  struct v4l2_subdev_selection crop = { 0 };

  rect = __vfe_get_compose(line, cfg, sel->which);
  if (rect == ((void*)0))
   return -EINVAL;

  vfe_try_compose(line, cfg, &sel->r, sel->which);
  *rect = sel->r;


  crop.which = sel->which;
  crop.pad = MSM_VFE_PAD_SRC;
  crop.target = V4L2_SEL_TGT_CROP;
  crop.r = *rect;
  ret = vfe_set_selection(sd, cfg, &crop);
 } else if (sel->target == V4L2_SEL_TGT_CROP &&
  sel->pad == MSM_VFE_PAD_SRC) {
  struct v4l2_subdev_format fmt = { 0 };

  rect = __vfe_get_crop(line, cfg, sel->which);
  if (rect == ((void*)0))
   return -EINVAL;

  vfe_try_crop(line, cfg, &sel->r, sel->which);
  *rect = sel->r;


  fmt.which = sel->which;
  fmt.pad = MSM_VFE_PAD_SRC;
  ret = vfe_get_format(sd, cfg, &fmt);
  if (ret < 0)
   return ret;

  fmt.format.width = rect->width;
  fmt.format.height = rect->height;
  ret = vfe_set_format(sd, cfg, &fmt);
 } else {
  ret = -EINVAL;
 }

 return ret;
}
