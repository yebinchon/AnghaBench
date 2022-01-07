
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int which; int format; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9m032 {int lock; scalar_t__ streaming; } ;


 int EBUSY ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int * __mt9m032_get_pad_format (struct mt9m032*,struct v4l2_subdev_pad_config*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mt9m032* to_mt9m032 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m032_set_pad_format(struct v4l2_subdev *subdev,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *fmt)
{
 struct mt9m032 *sensor = to_mt9m032(subdev);
 int ret;

 mutex_lock(&sensor->lock);

 if (sensor->streaming && fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
  ret = -EBUSY;
  goto done;
 }


 fmt->format = *__mt9m032_get_pad_format(sensor, cfg, fmt->which);
 ret = 0;

done:
 mutex_unlock(&sensor->lock);
 return ret;
}
