
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_subdev_selection {scalar_t__ which; scalar_t__ target; TYPE_3__ r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {int height; int width; } ;
struct TYPE_5__ {TYPE_1__ bt; } ;
struct adv76xx_state {TYPE_2__ timings; } ;


 int EINVAL ;
 scalar_t__ V4L2_SEL_TGT_CROP_BOUNDS ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv76xx_get_selection(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_selection *sel)
{
 struct adv76xx_state *state = to_state(sd);

 if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE)
  return -EINVAL;

 if (sel->target > V4L2_SEL_TGT_CROP_BOUNDS)
  return -EINVAL;

 sel->r.left = 0;
 sel->r.top = 0;
 sel->r.width = state->timings.bt.width;
 sel->r.height = state->timings.bt.height;

 return 0;
}
