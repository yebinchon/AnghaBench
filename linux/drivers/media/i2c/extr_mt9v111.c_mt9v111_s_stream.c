
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9v111_dev {int streaming; int pending; int stream_mutex; } ;


 int mt9v111_hw_config (struct mt9v111_dev*) ;
 int mt9v111_s_power (struct v4l2_subdev*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mt9v111_dev* sd_to_mt9v111 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v111_s_stream(struct v4l2_subdev *subdev, int enable)
{
 struct mt9v111_dev *mt9v111 = sd_to_mt9v111(subdev);
 int ret;

 mutex_lock(&mt9v111->stream_mutex);

 if (mt9v111->streaming == enable) {
  mutex_unlock(&mt9v111->stream_mutex);
  return 0;
 }

 ret = mt9v111_s_power(subdev, enable);
 if (ret)
  goto error_unlock;

 if (enable && mt9v111->pending) {
  ret = mt9v111_hw_config(mt9v111);
  if (ret)
   goto error_unlock;






  mt9v111->pending = 0;
 }

 mt9v111->streaming = enable ? 1 : 0;
 mutex_unlock(&mt9v111->stream_mutex);

 return 0;

error_unlock:
 mutex_unlock(&mt9v111->stream_mutex);

 return ret;
}
