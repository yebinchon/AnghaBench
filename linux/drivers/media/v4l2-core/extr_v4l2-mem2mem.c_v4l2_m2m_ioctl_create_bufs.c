
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int m2m_ctx; } ;
struct v4l2_create_buffers {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;


 int v4l2_m2m_create_bufs (struct file*,int ,struct v4l2_create_buffers*) ;

int v4l2_m2m_ioctl_create_bufs(struct file *file, void *priv,
    struct v4l2_create_buffers *create)
{
 struct v4l2_fh *fh = file->private_data;

 return v4l2_m2m_create_bufs(file, fh->m2m_ctx, create);
}
