
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int dummy; } ;
struct v4l2_fh {int m2m_ctx; } ;
struct file {struct v4l2_fh* private_data; } ;


 int v4l2_m2m_reqbufs (struct file*,int ,struct v4l2_requestbuffers*) ;

int v4l2_m2m_ioctl_reqbufs(struct file *file, void *priv,
    struct v4l2_requestbuffers *rb)
{
 struct v4l2_fh *fh = file->private_data;

 return v4l2_m2m_reqbufs(file, fh->m2m_ctx, rb);
}
