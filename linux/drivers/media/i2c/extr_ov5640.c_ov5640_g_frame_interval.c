
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_frame_interval {int interval; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5640_dev {int lock; int frame_interval; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ov5640_dev* to_ov5640_dev (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5640_g_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *fi)
{
 struct ov5640_dev *sensor = to_ov5640_dev(sd);

 mutex_lock(&sensor->lock);
 fi->interval = sensor->frame_interval;
 mutex_unlock(&sensor->lock);

 return 0;
}
