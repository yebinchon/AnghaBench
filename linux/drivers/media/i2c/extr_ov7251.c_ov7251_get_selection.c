
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_selection {scalar_t__ target; int which; int pad; int r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct ov7251 {int lock; } ;


 int EINVAL ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 int * __ov7251_get_pad_crop (struct ov7251*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ov7251* to_ov7251 (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7251_get_selection(struct v4l2_subdev *sd,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_selection *sel)
{
 struct ov7251 *ov7251 = to_ov7251(sd);

 if (sel->target != V4L2_SEL_TGT_CROP)
  return -EINVAL;

 mutex_lock(&ov7251->lock);
 sel->r = *__ov7251_get_pad_crop(ov7251, cfg, sel->pad,
     sel->which);
 mutex_unlock(&ov7251->lock);

 return 0;
}
