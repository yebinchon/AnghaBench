
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9m032 {int streaming; int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mt9m032* to_mt9m032 (struct v4l2_subdev*) ;
 int update_formatter2 (struct mt9m032*,int) ;

__attribute__((used)) static int mt9m032_s_stream(struct v4l2_subdev *subdev, int streaming)
{
 struct mt9m032 *sensor = to_mt9m032(subdev);
 int ret;

 mutex_lock(&sensor->lock);
 ret = update_formatter2(sensor, streaming);
 if (!ret)
  sensor->streaming = streaming;
 mutex_unlock(&sensor->lock);

 return ret;
}
