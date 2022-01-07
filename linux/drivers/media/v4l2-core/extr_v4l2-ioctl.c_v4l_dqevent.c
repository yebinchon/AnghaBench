
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ioctl_ops {int dummy; } ;
struct file {int f_flags; } ;


 int O_NONBLOCK ;
 int v4l2_event_dequeue (void*,void*,int) ;

__attribute__((used)) static int v4l_dqevent(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 return v4l2_event_dequeue(fh, arg, file->f_flags & O_NONBLOCK);
}
