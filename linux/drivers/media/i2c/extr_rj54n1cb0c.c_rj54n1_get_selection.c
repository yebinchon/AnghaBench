
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; int top; int left; } ;
struct v4l2_subdev_selection {scalar_t__ which; int target; TYPE_1__ r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct rj54n1 {TYPE_1__ rect; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int RJ54N1_COLUMN_SKIP ;
 int RJ54N1_MAX_HEIGHT ;
 int RJ54N1_MAX_WIDTH ;
 int RJ54N1_ROW_SKIP ;


 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct rj54n1* to_rj54n1 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int rj54n1_get_selection(struct v4l2_subdev *sd,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_selection *sel)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct rj54n1 *rj54n1 = to_rj54n1(client);

 if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE)
  return -EINVAL;

 switch (sel->target) {
 case 128:
  sel->r.left = RJ54N1_COLUMN_SKIP;
  sel->r.top = RJ54N1_ROW_SKIP;
  sel->r.width = RJ54N1_MAX_WIDTH;
  sel->r.height = RJ54N1_MAX_HEIGHT;
  return 0;
 case 129:
  sel->r = rj54n1->rect;
  return 0;
 default:
  return -EINVAL;
 }
}
