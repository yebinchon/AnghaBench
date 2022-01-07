
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int which; int pad; int format; } ;
struct v4l2_subdev {int dummy; } ;
struct imx214 {int mutex; } ;


 int * __imx214_get_pad_format (struct imx214*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx214* to_imx214 (struct v4l2_subdev*) ;

__attribute__((used)) static int imx214_get_format(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *format)
{
 struct imx214 *imx214 = to_imx214(sd);

 mutex_lock(&imx214->mutex);
 format->format = *__imx214_get_pad_format(imx214, cfg, format->pad,
        format->which);
 mutex_unlock(&imx214->mutex);

 return 0;
}
