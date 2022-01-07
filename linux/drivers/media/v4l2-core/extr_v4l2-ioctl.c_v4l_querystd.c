
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct video_device {int tvnorms; } ;
struct v4l2_ioctl_ops {int (* vidioc_querystd ) (struct file*,void*,void*) ;} ;
struct file {int dummy; } ;


 int stub1 (struct file*,void*,void*) ;
 int v4l_enable_media_source (struct video_device*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_querystd(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct video_device *vfd = video_devdata(file);
 v4l2_std_id *p = arg;
 int ret;

 ret = v4l_enable_media_source(vfd);
 if (ret)
  return ret;
 *p = vfd->tvnorms;
 return ops->vidioc_querystd(file, fh, arg);
}
