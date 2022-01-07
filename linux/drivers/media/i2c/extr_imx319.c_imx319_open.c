
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int code; int height; int width; } ;
struct imx319 {int mutex; TYPE_1__* cur_mode; } ;
struct TYPE_2__ {int height; int width; } ;


 int V4L2_FIELD_NONE ;
 int imx319_get_format_code (struct imx319*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx319* to_imx319 (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int imx319_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 struct imx319 *imx319 = to_imx319(sd);
 struct v4l2_mbus_framefmt *try_fmt =
  v4l2_subdev_get_try_format(sd, fh->pad, 0);

 mutex_lock(&imx319->mutex);


 try_fmt->width = imx319->cur_mode->width;
 try_fmt->height = imx319->cur_mode->height;
 try_fmt->code = imx319_get_format_code(imx319);
 try_fmt->field = V4L2_FIELD_NONE;

 mutex_unlock(&imx319->mutex);

 return 0;
}
