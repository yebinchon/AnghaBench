
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ioctl_ops {int (* vidioc_streamoff ) (struct file*,void*,unsigned int) ;} ;
struct file {int dummy; } ;


 int stub1 (struct file*,void*,unsigned int) ;

__attribute__((used)) static int v4l_streamoff(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 return ops->vidioc_streamoff(file, fh, *(unsigned int *)arg);
}
