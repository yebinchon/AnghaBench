
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov2680_dev {int is_streaming; int lock; scalar_t__ mode_pending_changes; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov2680_mode_set (struct ov2680_dev*) ;
 int ov2680_stream_disable (struct ov2680_dev*) ;
 int ov2680_stream_enable (struct ov2680_dev*) ;
 struct ov2680_dev* to_ov2680_dev (struct v4l2_subdev*) ;

__attribute__((used)) static int ov2680_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct ov2680_dev *sensor = to_ov2680_dev(sd);
 int ret = 0;

 mutex_lock(&sensor->lock);

 if (sensor->is_streaming == !!enable)
  goto unlock;

 if (enable && sensor->mode_pending_changes) {
  ret = ov2680_mode_set(sensor);
  if (ret < 0)
   goto unlock;
 }

 if (enable)
  ret = ov2680_stream_enable(sensor);
 else
  ret = ov2680_stream_disable(sensor);

 sensor->is_streaming = !!enable;

unlock:
 mutex_unlock(&sensor->lock);

 return ret;
}
