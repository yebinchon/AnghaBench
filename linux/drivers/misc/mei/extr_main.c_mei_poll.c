
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {scalar_t__ dev_state; scalar_t__ tx_queue_limit; int device_lock; } ;
struct mei_cl {scalar_t__ tx_cb_queued; int tx_wait; int rd_completed; int rx_wait; scalar_t__ notify_ev; int ev_wait; int notify_en; struct mei_device* dev; } ;
struct file {struct mei_cl* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLPRI ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 scalar_t__ MEI_DEV_ENABLED ;
 scalar_t__ WARN_ON (int) ;
 int list_empty (int *) ;
 int mei_cl_is_connected (struct mei_cl*) ;
 int mei_cl_mtu (struct mei_cl*) ;
 int mei_cl_read_start (struct mei_cl*,int ,struct file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_requested_events (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t mei_poll(struct file *file, poll_table *wait)
{
 __poll_t req_events = poll_requested_events(wait);
 struct mei_cl *cl = file->private_data;
 struct mei_device *dev;
 __poll_t mask = 0;
 bool notify_en;

 if (WARN_ON(!cl || !cl->dev))
  return EPOLLERR;

 dev = cl->dev;

 mutex_lock(&dev->device_lock);

 notify_en = cl->notify_en && (req_events & EPOLLPRI);

 if (dev->dev_state != MEI_DEV_ENABLED ||
     !mei_cl_is_connected(cl)) {
  mask = EPOLLERR;
  goto out;
 }

 if (notify_en) {
  poll_wait(file, &cl->ev_wait, wait);
  if (cl->notify_ev)
   mask |= EPOLLPRI;
 }

 if (req_events & (EPOLLIN | EPOLLRDNORM)) {
  poll_wait(file, &cl->rx_wait, wait);

  if (!list_empty(&cl->rd_completed))
   mask |= EPOLLIN | EPOLLRDNORM;
  else
   mei_cl_read_start(cl, mei_cl_mtu(cl), file);
 }

 if (req_events & (EPOLLOUT | EPOLLWRNORM)) {
  poll_wait(file, &cl->tx_wait, wait);
  if (cl->tx_cb_queued < dev->tx_queue_limit)
   mask |= EPOLLOUT | EPOLLWRNORM;
 }

out:
 mutex_unlock(&dev->device_lock);
 return mask;
}
