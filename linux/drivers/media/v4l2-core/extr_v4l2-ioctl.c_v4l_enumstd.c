
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int tvnorms; } ;
struct v4l2_standard {int dummy; } ;
struct v4l2_ioctl_ops {int dummy; } ;
struct file {int dummy; } ;


 int v4l_video_std_enumstd (struct v4l2_standard*,int ) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_enumstd(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct video_device *vfd = video_devdata(file);
 struct v4l2_standard *p = arg;

 return v4l_video_std_enumstd(p, vfd->tvnorms);
}
