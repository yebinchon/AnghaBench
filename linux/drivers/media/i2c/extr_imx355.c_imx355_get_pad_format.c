
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct imx355 {int mutex; } ;


 int imx355_do_get_pad_format (struct imx355*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx355* to_imx355 (struct v4l2_subdev*) ;

__attribute__((used)) static int imx355_get_pad_format(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct imx355 *imx355 = to_imx355(sd);
 int ret;

 mutex_lock(&imx355->mutex);
 ret = imx355_do_get_pad_format(imx355, cfg, fmt);
 mutex_unlock(&imx355->mutex);

 return ret;
}
