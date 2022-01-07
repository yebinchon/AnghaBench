
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int device_lock; int hbm_f_ev_supported; } ;
struct mei_cl {int notify_ev; int ev_wait; struct mei_device* dev; } ;


 int EAGAIN ;
 int ENODEV ;
 int EOPNOTSUPP ;
 scalar_t__ WARN_ON (int) ;
 int cl_dbg (struct mei_device*,struct mei_cl*,char*) ;
 int mei_cl_is_connected (struct mei_cl*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_interruptible (int ,int) ;

int mei_cl_notify_get(struct mei_cl *cl, bool block, bool *notify_ev)
{
 struct mei_device *dev;
 int rets;

 *notify_ev = 0;

 if (WARN_ON(!cl || !cl->dev))
  return -ENODEV;

 dev = cl->dev;

 if (!dev->hbm_f_ev_supported) {
  cl_dbg(dev, cl, "notifications not supported\n");
  return -EOPNOTSUPP;
 }

 if (!mei_cl_is_connected(cl))
  return -ENODEV;

 if (cl->notify_ev)
  goto out;

 if (!block)
  return -EAGAIN;

 mutex_unlock(&dev->device_lock);
 rets = wait_event_interruptible(cl->ev_wait, cl->notify_ev);
 mutex_lock(&dev->device_lock);

 if (rets < 0)
  return rets;

out:
 *notify_ev = cl->notify_ev;
 cl->notify_ev = 0;
 return 0;
}
