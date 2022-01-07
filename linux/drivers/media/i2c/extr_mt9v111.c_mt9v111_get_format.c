
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int which; int pad; int format; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9v111_dev {int stream_mutex; } ;


 int EINVAL ;
 int * __mt9v111_get_pad_format (struct mt9v111_dev*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mt9v111_dev* sd_to_mt9v111 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v111_get_format(struct v4l2_subdev *subdev,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *format)
{
 struct mt9v111_dev *mt9v111 = sd_to_mt9v111(subdev);

 if (format->pad)
  return -EINVAL;

 mutex_lock(&mt9v111->stream_mutex);
 format->format = *__mt9v111_get_pad_format(mt9v111, cfg, format->pad,
         format->which);
 mutex_unlock(&mt9v111->stream_mutex);

 return 0;
}
