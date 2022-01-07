
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct file {int f_flags; } ;
struct cx231xx_fh {int vb_vidq; struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;


 int O_NONBLOCK ;
 int check_dev (struct cx231xx*) ;
 int videobuf_dqbuf (int *,struct v4l2_buffer*,int) ;

__attribute__((used)) static int vidioc_dqbuf(struct file *file, void *priv, struct v4l2_buffer *b)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 return videobuf_dqbuf(&fh->vb_vidq, b, file->f_flags & O_NONBLOCK);
}
