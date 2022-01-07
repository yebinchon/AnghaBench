
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_device {int notif_work; int notif_cb; } ;
struct mei_cl {int notify_ev; struct mei_cl_device* cldev; } ;


 int schedule_work (int *) ;

bool mei_cl_bus_notify_event(struct mei_cl *cl)
{
 struct mei_cl_device *cldev = cl->cldev;

 if (!cldev || !cldev->notif_cb)
  return 0;

 if (!cl->notify_ev)
  return 0;

 schedule_work(&cldev->notif_work);

 cl->notify_ev = 0;

 return 1;
}
