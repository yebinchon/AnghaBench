
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ioctl_ops {int (* vidioc_prepare_buf ) (struct file*,void*,struct v4l2_buffer*) ;} ;
struct v4l2_buffer {int type; } ;
struct file {int dummy; } ;


 int check_fmt (struct file*,int ) ;
 int stub1 (struct file*,void*,struct v4l2_buffer*) ;

__attribute__((used)) static int v4l_prepare_buf(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct v4l2_buffer *b = arg;
 int ret = check_fmt(file, b->type);

 return ret ? ret : ops->vidioc_prepare_buf(file, fh, b);
}
