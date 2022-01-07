
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {scalar_t__ index; } ;
struct stk_sio_buffer {struct v4l2_buffer v4lbuf; } ;
struct stk_camera {scalar_t__ n_sbufs; struct stk_sio_buffer* sio_bufs; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct stk_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int stk_vidioc_querybuf(struct file *filp,
  void *priv, struct v4l2_buffer *buf)
{
 struct stk_camera *dev = video_drvdata(filp);
 struct stk_sio_buffer *sbuf;

 if (buf->index >= dev->n_sbufs)
  return -EINVAL;
 sbuf = dev->sio_bufs + buf->index;
 *buf = sbuf->v4lbuf;
 return 0;
}
