
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_subdev_selection {scalar_t__ which; int target; TYPE_3__ r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct ov772x_priv {TYPE_2__* win; } ;
struct TYPE_4__ {int height; int width; } ;
struct TYPE_5__ {TYPE_1__ rect; } ;


 int EINVAL ;


 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct ov772x_priv* to_ov772x (struct v4l2_subdev*) ;

__attribute__((used)) static int ov772x_get_selection(struct v4l2_subdev *sd,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_selection *sel)
{
 struct ov772x_priv *priv = to_ov772x(sd);

 if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE)
  return -EINVAL;

 sel->r.left = 0;
 sel->r.top = 0;
 switch (sel->target) {
 case 128:
 case 129:
  sel->r.width = priv->win->rect.width;
  sel->r.height = priv->win->rect.height;
  return 0;
 default:
  return -EINVAL;
 }
}
