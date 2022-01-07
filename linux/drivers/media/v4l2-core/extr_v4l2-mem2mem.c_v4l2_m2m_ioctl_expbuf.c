
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int m2m_ctx; } ;
struct v4l2_exportbuffer {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;


 int v4l2_m2m_expbuf (struct file*,int ,struct v4l2_exportbuffer*) ;

int v4l2_m2m_ioctl_expbuf(struct file *file, void *priv,
    struct v4l2_exportbuffer *eb)
{
 struct v4l2_fh *fh = file->private_data;

 return v4l2_m2m_expbuf(file, fh->m2m_ctx, eb);
}
