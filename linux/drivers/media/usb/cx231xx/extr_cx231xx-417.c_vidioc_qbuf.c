
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {int vidq; } ;


 int videobuf_qbuf (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int vidioc_qbuf(struct file *file, void *priv,
    struct v4l2_buffer *p)
{
 struct cx231xx_fh *fh = file->private_data;

 return videobuf_qbuf(&fh->vidq, p);
}
