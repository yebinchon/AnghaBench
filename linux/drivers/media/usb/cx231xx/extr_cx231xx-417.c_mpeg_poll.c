
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct poll_table_struct {int dummy; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct TYPE_2__ {int wait; } ;
struct cx231xx_fh {int vidq; TYPE_1__ fh; struct cx231xx* dev; } ;
struct cx231xx {int lock; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLPRI ;
 int EPOLLRDNORM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_requested_events (struct poll_table_struct*) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 scalar_t__ v4l2_event_pending (TYPE_1__*) ;
 int videobuf_poll_stream (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t mpeg_poll(struct file *file,
 struct poll_table_struct *wait)
{
 __poll_t req_events = poll_requested_events(wait);
 struct cx231xx_fh *fh = file->private_data;
 struct cx231xx *dev = fh->dev;
 __poll_t res = 0;

 if (v4l2_event_pending(&fh->fh))
  res |= EPOLLPRI;
 else
  poll_wait(file, &fh->fh.wait, wait);

 if (!(req_events & (EPOLLIN | EPOLLRDNORM)))
  return res;

 mutex_lock(&dev->lock);
 res |= videobuf_poll_stream(file, &fh->vidq, wait);
 mutex_unlock(&dev->lock);
 return res;
}
