
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ left; scalar_t__ top; int height; int width; } ;
struct v4l2_subdev_selection {scalar_t__ pad; scalar_t__ target; TYPE_1__ r; int flags; int which; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct stimx274 {int lock; } ;


 int EINVAL ;
 scalar_t__ V4L2_SEL_TGT_COMPOSE ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 int __imx274_change_compose (struct stimx274*,struct v4l2_subdev_pad_config*,int ,int *,int *,int ) ;
 int imx274_set_selection_crop (struct stimx274*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_selection*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stimx274* to_imx274 (struct v4l2_subdev*) ;

__attribute__((used)) static int imx274_set_selection(struct v4l2_subdev *sd,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_selection *sel)
{
 struct stimx274 *imx274 = to_imx274(sd);

 if (sel->pad != 0)
  return -EINVAL;

 if (sel->target == V4L2_SEL_TGT_CROP)
  return imx274_set_selection_crop(imx274, cfg, sel);

 if (sel->target == V4L2_SEL_TGT_COMPOSE) {
  int err;

  mutex_lock(&imx274->lock);
  err = __imx274_change_compose(imx274, cfg, sel->which,
            &sel->r.width, &sel->r.height,
            sel->flags);
  mutex_unlock(&imx274->lock);





  if (!err) {
   sel->r.top = 0;
   sel->r.left = 0;
  }

  return err;
 }

 return -EINVAL;
}
