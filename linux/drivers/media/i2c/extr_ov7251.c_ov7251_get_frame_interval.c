
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_frame_interval {int interval; } ;
struct v4l2_subdev {int dummy; } ;
struct ov7251 {int lock; TYPE_1__* current_mode; } ;
struct TYPE_2__ {int timeperframe; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ov7251* to_ov7251 (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7251_get_frame_interval(struct v4l2_subdev *subdev,
         struct v4l2_subdev_frame_interval *fi)
{
 struct ov7251 *ov7251 = to_ov7251(subdev);

 mutex_lock(&ov7251->lock);
 fi->interval = ov7251->current_mode->timeperframe;
 mutex_unlock(&ov7251->lock);

 return 0;
}
