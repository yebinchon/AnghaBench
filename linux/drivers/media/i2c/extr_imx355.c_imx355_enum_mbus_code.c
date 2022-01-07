
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ index; int code; } ;
struct v4l2_subdev {int dummy; } ;
struct imx355 {int mutex; } ;


 int EINVAL ;
 int imx355_get_format_code (struct imx355*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx355* to_imx355 (struct v4l2_subdev*) ;

__attribute__((used)) static int imx355_enum_mbus_code(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_mbus_code_enum *code)
{
 struct imx355 *imx355 = to_imx355(sd);

 if (code->index > 0)
  return -EINVAL;

 mutex_lock(&imx355->mutex);
 code->code = imx355_get_format_code(imx355);
 mutex_unlock(&imx355->mutex);

 return 0;
}
