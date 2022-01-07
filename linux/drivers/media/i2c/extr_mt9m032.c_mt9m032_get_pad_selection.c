
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_selection {scalar_t__ target; int which; int r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9m032 {int lock; } ;


 int EINVAL ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 int * __mt9m032_get_pad_crop (struct mt9m032*,struct v4l2_subdev_pad_config*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mt9m032* to_mt9m032 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m032_get_pad_selection(struct v4l2_subdev *subdev,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_selection *sel)
{
 struct mt9m032 *sensor = to_mt9m032(subdev);

 if (sel->target != V4L2_SEL_TGT_CROP)
  return -EINVAL;

 mutex_lock(&sensor->lock);
 sel->r = *__mt9m032_get_pad_crop(sensor, cfg, sel->which);
 mutex_unlock(&sensor->lock);

 return 0;
}
