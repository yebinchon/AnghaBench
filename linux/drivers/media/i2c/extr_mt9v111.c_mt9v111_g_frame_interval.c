
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fract {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval {struct v4l2_fract interval; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9v111_dev {int stream_mutex; int fps; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mt9v111_dev* sd_to_mt9v111 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v111_g_frame_interval(struct v4l2_subdev *sd,
        struct v4l2_subdev_frame_interval *ival)
{
 struct mt9v111_dev *mt9v111 = sd_to_mt9v111(sd);
 struct v4l2_fract *tpf = &ival->interval;

 mutex_lock(&mt9v111->stream_mutex);

 tpf->numerator = 1;
 tpf->denominator = mt9v111->fps;

 mutex_unlock(&mt9v111->stream_mutex);

 return 0;
}
