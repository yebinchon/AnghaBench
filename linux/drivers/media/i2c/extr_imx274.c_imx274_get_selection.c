
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int height; int width; scalar_t__ left; scalar_t__ top; } ;
struct v4l2_subdev_selection {scalar_t__ pad; int target; scalar_t__ which; struct v4l2_rect r; } ;
struct v4l2_mbus_framefmt {int height; int width; } ;
struct v4l2_subdev_pad_config {struct v4l2_mbus_framefmt try_fmt; struct v4l2_rect try_crop; } ;
struct v4l2_subdev {int dummy; } ;
struct stimx274 {int lock; struct v4l2_mbus_framefmt format; struct v4l2_rect crop; } ;


 int EINVAL ;
 int IMX274_MAX_HEIGHT ;
 int IMX274_MAX_WIDTH ;



 int V4L2_SEL_TGT_CROP_BOUNDS ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stimx274* to_imx274 (struct v4l2_subdev*) ;

__attribute__((used)) static int imx274_get_selection(struct v4l2_subdev *sd,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_selection *sel)
{
 struct stimx274 *imx274 = to_imx274(sd);
 const struct v4l2_rect *src_crop;
 const struct v4l2_mbus_framefmt *src_fmt;
 int ret = 0;

 if (sel->pad != 0)
  return -EINVAL;

 if (sel->target == V4L2_SEL_TGT_CROP_BOUNDS) {
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = IMX274_MAX_WIDTH;
  sel->r.height = IMX274_MAX_HEIGHT;
  return 0;
 }

 if (sel->which == V4L2_SUBDEV_FORMAT_TRY) {
  src_crop = &cfg->try_crop;
  src_fmt = &cfg->try_fmt;
 } else {
  src_crop = &imx274->crop;
  src_fmt = &imx274->format;
 }

 mutex_lock(&imx274->lock);

 switch (sel->target) {
 case 128:
  sel->r = *src_crop;
  break;
 case 129:
  sel->r.top = 0;
  sel->r.left = 0;
  sel->r.width = src_crop->width;
  sel->r.height = src_crop->height;
  break;
 case 130:
  sel->r.top = 0;
  sel->r.left = 0;
  sel->r.width = src_fmt->width;
  sel->r.height = src_fmt->height;
  break;
 default:
  ret = -EINVAL;
 }

 mutex_unlock(&imx274->lock);

 return ret;
}
