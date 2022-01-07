
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ioctl_ops {int (* vidioc_subscribe_event ) (void*,void*) ;} ;
struct file {int dummy; } ;


 int stub1 (void*,void*) ;

__attribute__((used)) static int v4l_subscribe_event(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 return ops->vidioc_subscribe_event(fh, arg);
}
