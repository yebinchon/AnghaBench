
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct video_device {int prio; int flags; } ;
struct v4l2_ioctl_ops {int dummy; } ;
struct v4l2_fh {int prio; } ;
struct file {struct v4l2_fh* private_data; } ;


 int ENOTTY ;
 int V4L2_FL_USES_V4L2_FH ;
 int test_bit (int ,int *) ;
 int v4l2_prio_change (int ,int *,int ) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_s_priority(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct video_device *vfd;
 struct v4l2_fh *vfh;
 u32 *p = arg;

 vfd = video_devdata(file);
 if (!test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags))
  return -ENOTTY;
 vfh = file->private_data;
 return v4l2_prio_change(vfd->prio, &vfh->prio, *p);
}
