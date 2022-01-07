
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;
struct mei_cl {int notify_ev; scalar_t__ ev_async; int ev_wait; int notify_en; struct mei_device* dev; } ;


 int POLL_PRI ;
 int SIGIO ;
 int cl_dbg (struct mei_device*,struct mei_cl*,char*) ;
 int kill_fasync (scalar_t__*,int ,int ) ;
 int mei_cl_bus_notify_event (struct mei_cl*) ;
 int wake_up_interruptible (int *) ;

void mei_cl_notify(struct mei_cl *cl)
{
 struct mei_device *dev;

 if (!cl || !cl->dev)
  return;

 dev = cl->dev;

 if (!cl->notify_en)
  return;

 cl_dbg(dev, cl, "notify event");
 cl->notify_ev = 1;
 if (!mei_cl_bus_notify_event(cl))
  wake_up_interruptible(&cl->ev_wait);

 if (cl->ev_async)
  kill_fasync(&cl->ev_async, SIGIO, POLL_PRI);

}
