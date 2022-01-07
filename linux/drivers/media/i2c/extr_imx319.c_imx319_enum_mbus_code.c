
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ index; int code; } ;
struct v4l2_subdev {int dummy; } ;
struct imx319 {int mutex; } ;


 int EINVAL ;
 int imx319_get_format_code (struct imx319*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx319* to_imx319 (struct v4l2_subdev*) ;

__attribute__((used)) static int imx319_enum_mbus_code(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_mbus_code_enum *code)
{
 struct imx319 *imx319 = to_imx319(sd);

 if (code->index > 0)
  return -EINVAL;

 mutex_lock(&imx319->mutex);
 code->code = imx319_get_format_code(imx319);
 mutex_unlock(&imx319->mutex);

 return 0;
}
