
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int height; int width; int top; int left; } ;
struct v4l2_subdev_selection {scalar_t__ target; struct v4l2_rect r; int which; int reserved; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k6aa {int lock; } ;


 int EINVAL ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 struct v4l2_rect* __s5k6aa_get_crop_rect (struct s5k6aa*,struct v4l2_subdev_pad_config*,int ) ;
 int debug ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5k6aa* to_s5k6aa (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int s5k6aa_get_selection(struct v4l2_subdev *sd,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_selection *sel)
{
 struct s5k6aa *s5k6aa = to_s5k6aa(sd);
 struct v4l2_rect *rect;

 if (sel->target != V4L2_SEL_TGT_CROP)
  return -EINVAL;

 memset(sel->reserved, 0, sizeof(sel->reserved));

 mutex_lock(&s5k6aa->lock);
 rect = __s5k6aa_get_crop_rect(s5k6aa, cfg, sel->which);
 sel->r = *rect;
 mutex_unlock(&s5k6aa->lock);

 v4l2_dbg(1, debug, sd, "Current crop rectangle: (%d,%d)/%dx%d\n",
   rect->left, rect->top, rect->width, rect->height);

 return 0;
}
