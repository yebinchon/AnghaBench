
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct video_device {int prio; } ;
struct v4l2_ioctl_ops {int dummy; } ;
struct file {int dummy; } ;


 int v4l2_prio_max (int ) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_g_priority(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct video_device *vfd;
 u32 *p = arg;

 vfd = video_devdata(file);
 *p = v4l2_prio_max(vfd->prio);
 return 0;
}
