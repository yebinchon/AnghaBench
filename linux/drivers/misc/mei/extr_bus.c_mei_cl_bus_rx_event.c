
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_device {int rx_work; int rx_cb; } ;
struct mei_cl {struct mei_cl_device* cldev; } ;


 int schedule_work (int *) ;

bool mei_cl_bus_rx_event(struct mei_cl *cl)
{
 struct mei_cl_device *cldev = cl->cldev;

 if (!cldev || !cldev->rx_cb)
  return 0;

 schedule_work(&cldev->rx_work);

 return 1;
}
