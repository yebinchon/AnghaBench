
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viu_fh {int vb_vidq; } ;
struct v4l2_buffer {int dummy; } ;
struct file {int dummy; } ;


 int videobuf_qbuf (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int vidioc_qbuf(struct file *file, void *priv, struct v4l2_buffer *p)
{
 struct viu_fh *fh = priv;

 return videobuf_qbuf(&fh->vb_vidq, p);
}
