
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_selection {scalar_t__ target; int which; int pad; int r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9v032 {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 int * __mt9v032_get_pad_crop (struct mt9v032*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct mt9v032* to_mt9v032 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v032_get_selection(struct v4l2_subdev *subdev,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_selection *sel)
{
 struct mt9v032 *mt9v032 = to_mt9v032(subdev);

 if (sel->target != V4L2_SEL_TGT_CROP)
  return -EINVAL;

 sel->r = *__mt9v032_get_pad_crop(mt9v032, cfg, sel->pad, sel->which);
 return 0;
}
