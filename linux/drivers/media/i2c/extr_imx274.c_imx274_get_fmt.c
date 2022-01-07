
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int format; } ;
struct v4l2_subdev {int dummy; } ;
struct stimx274 {int lock; int format; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stimx274* to_imx274 (struct v4l2_subdev*) ;

__attribute__((used)) static int imx274_get_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct stimx274 *imx274 = to_imx274(sd);

 mutex_lock(&imx274->lock);
 fmt->format = imx274->format;
 mutex_unlock(&imx274->lock);
 return 0;
}
