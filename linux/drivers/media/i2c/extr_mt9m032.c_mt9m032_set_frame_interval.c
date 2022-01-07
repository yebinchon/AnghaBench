
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int denominator; } ;
struct v4l2_subdev_frame_interval {TYPE_1__ interval; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9m032 {int lock; TYPE_1__ frame_interval; scalar_t__ streaming; } ;


 int EBUSY ;
 int mt9m032_update_timing (struct mt9m032*,TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mt9m032* to_mt9m032 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m032_set_frame_interval(struct v4l2_subdev *subdev,
          struct v4l2_subdev_frame_interval *fi)
{
 struct mt9m032 *sensor = to_mt9m032(subdev);
 int ret;

 mutex_lock(&sensor->lock);

 if (sensor->streaming) {
  ret = -EBUSY;
  goto done;
 }


 if (fi->interval.denominator == 0)
  fi->interval.denominator = 1;

 ret = mt9m032_update_timing(sensor, &fi->interval);
 if (!ret)
  sensor->frame_interval = fi->interval;

done:
 mutex_unlock(&sensor->lock);
 return ret;
}
