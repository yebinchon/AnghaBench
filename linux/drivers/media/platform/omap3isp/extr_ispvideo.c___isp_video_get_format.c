
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev_format {int format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; int type; } ;
struct isp_video {int type; int mutex; } ;


 int EINVAL ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int get_fmt ;
 int isp_video_mbus_to_pix (struct isp_video*,int *,int *) ;
 struct v4l2_subdev* isp_video_remote_subdev (struct isp_video*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_format*) ;

__attribute__((used)) static int
__isp_video_get_format(struct isp_video *video, struct v4l2_format *format)
{
 struct v4l2_subdev_format fmt;
 struct v4l2_subdev *subdev;
 u32 pad;
 int ret;

 subdev = isp_video_remote_subdev(video, &pad);
 if (subdev == ((void*)0))
  return -EINVAL;

 fmt.pad = pad;
 fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;

 mutex_lock(&video->mutex);
 ret = v4l2_subdev_call(subdev, pad, get_fmt, ((void*)0), &fmt);
 mutex_unlock(&video->mutex);

 if (ret)
  return ret;

 format->type = video->type;
 return isp_video_mbus_to_pix(video, &fmt.format, &format->fmt.pix);
}
