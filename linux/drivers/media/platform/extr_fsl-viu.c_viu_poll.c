
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dummy; } ;
struct viu_fh {scalar_t__ type; struct viu_dev* dev; struct videobuf_queue vb_vidq; } ;
struct viu_dev {int lock; } ;
struct poll_table_struct {int dummy; } ;
struct file {struct viu_fh* private_data; } ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_requested_events (struct poll_table_struct*) ;
 int v4l2_ctrl_poll (struct file*,struct poll_table_struct*) ;
 int videobuf_poll_stream (struct file*,struct videobuf_queue*,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t viu_poll(struct file *file, struct poll_table_struct *wait)
{
 struct viu_fh *fh = file->private_data;
 struct videobuf_queue *q = &fh->vb_vidq;
 struct viu_dev *dev = fh->dev;
 __poll_t req_events = poll_requested_events(wait);
 __poll_t res = v4l2_ctrl_poll(file, wait);

 if (V4L2_BUF_TYPE_VIDEO_CAPTURE != fh->type)
  return EPOLLERR;

 if (!(req_events & (EPOLLIN | EPOLLRDNORM)))
  return res;

 mutex_lock(&dev->lock);
 res |= videobuf_poll_stream(file, q, wait);
 mutex_unlock(&dev->lock);
 return res;
}
