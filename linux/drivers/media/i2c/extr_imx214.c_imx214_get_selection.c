
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_selection {scalar_t__ target; int which; int pad; int r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct imx214 {int mutex; } ;


 int EINVAL ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 int * __imx214_get_pad_crop (struct imx214*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx214* to_imx214 (struct v4l2_subdev*) ;

__attribute__((used)) static int imx214_get_selection(struct v4l2_subdev *sd,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_selection *sel)
{
 struct imx214 *imx214 = to_imx214(sd);

 if (sel->target != V4L2_SEL_TGT_CROP)
  return -EINVAL;

 mutex_lock(&imx214->mutex);
 sel->r = *__imx214_get_pad_crop(imx214, cfg, sel->pad,
     sel->which);
 mutex_unlock(&imx214->mutex);
 return 0;
}
