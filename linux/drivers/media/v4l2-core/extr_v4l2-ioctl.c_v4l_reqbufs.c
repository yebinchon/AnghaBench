
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int type; } ;
struct v4l2_ioctl_ops {int (* vidioc_reqbufs ) (struct file*,void*,struct v4l2_requestbuffers*) ;} ;
struct file {int dummy; } ;


 int CLEAR_AFTER_FIELD (struct v4l2_requestbuffers*,int ) ;
 int capabilities ;
 int check_fmt (struct file*,int ) ;
 int stub1 (struct file*,void*,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int v4l_reqbufs(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct v4l2_requestbuffers *p = arg;
 int ret = check_fmt(file, p->type);

 if (ret)
  return ret;

 CLEAR_AFTER_FIELD(p, capabilities);

 return ops->vidioc_reqbufs(file, fh, p);
}
