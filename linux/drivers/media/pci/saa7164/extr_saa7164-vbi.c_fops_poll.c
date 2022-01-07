
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7164_vbi_fh {int v4l_reading; struct saa7164_port* port; } ;
struct TYPE_2__ {int list; } ;
struct saa7164_port {TYPE_1__ list_buf_used; int wait_read; int v4l_reader_count; int v4l_device; scalar_t__ last_poll_msecs_diff; int poll_interval; scalar_t__ last_poll_msecs; } ;
struct file {int f_flags; scalar_t__ private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 int O_NONBLOCK ;
 scalar_t__ atomic_cmpxchg (int *,int ,int) ;
 int atomic_inc_return (int *) ;
 int jiffies ;
 scalar_t__ jiffies_to_msecs (int ) ;
 int list_empty (int *) ;
 int msleep (int) ;
 int saa7164_histogram_update (int *,scalar_t__) ;
 scalar_t__ saa7164_vbi_initialize (struct saa7164_port*) ;
 int saa7164_vbi_next_buf (struct saa7164_port*) ;
 int saa7164_vbi_start_streaming (struct saa7164_port*) ;
 int video_is_registered (int ) ;
 scalar_t__ wait_event_interruptible (int ,int ) ;

__attribute__((used)) static __poll_t fops_poll(struct file *file, poll_table *wait)
{
 struct saa7164_vbi_fh *fh = (struct saa7164_vbi_fh *)file->private_data;
 struct saa7164_port *port = fh->port;
 __poll_t mask = 0;

 port->last_poll_msecs_diff = port->last_poll_msecs;
 port->last_poll_msecs = jiffies_to_msecs(jiffies);
 port->last_poll_msecs_diff = port->last_poll_msecs -
  port->last_poll_msecs_diff;

 saa7164_histogram_update(&port->poll_interval,
  port->last_poll_msecs_diff);

 if (!video_is_registered(port->v4l_device))
  return EPOLLERR;

 if (atomic_cmpxchg(&fh->v4l_reading, 0, 1) == 0) {
  if (atomic_inc_return(&port->v4l_reader_count) == 1) {
   if (saa7164_vbi_initialize(port) < 0)
    return EPOLLERR;
   saa7164_vbi_start_streaming(port);
   msleep(200);
  }
 }


 if ((file->f_flags & O_NONBLOCK) == 0) {
  if (wait_event_interruptible(port->wait_read,
   saa7164_vbi_next_buf(port))) {
    return EPOLLERR;
  }
 }


 if (!list_empty(&port->list_buf_used.list))
  mask |= EPOLLIN | EPOLLRDNORM;

 return mask;
}
