
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct imx319 {int mutex; } ;


 int imx319_do_get_pad_format (struct imx319*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx319* to_imx319 (struct v4l2_subdev*) ;

__attribute__((used)) static int imx319_get_pad_format(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct imx319 *imx319 = to_imx319(sd);
 int ret;

 mutex_lock(&imx319->mutex);
 ret = imx319_do_get_pad_format(imx319, cfg, fmt);
 mutex_unlock(&imx319->mutex);

 return ret;
}
