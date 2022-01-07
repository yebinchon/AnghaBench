
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_frame_interval {int interval; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9m032 {int lock; int frame_interval; } ;


 int memset (struct v4l2_subdev_frame_interval*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mt9m032* to_mt9m032 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m032_get_frame_interval(struct v4l2_subdev *subdev,
          struct v4l2_subdev_frame_interval *fi)
{
 struct mt9m032 *sensor = to_mt9m032(subdev);

 mutex_lock(&sensor->lock);
 memset(fi, 0, sizeof(*fi));
 fi->interval = sensor->frame_interval;
 mutex_unlock(&sensor->lock);

 return 0;
}
