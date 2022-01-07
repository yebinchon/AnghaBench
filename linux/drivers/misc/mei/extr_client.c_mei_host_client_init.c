
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dev; int bus_rescan_work; scalar_t__ reset_count; } ;


 int MEI_DEV_ENABLED ;
 int dev_dbg (int ,char*) ;
 int mei_set_devstate (struct mei_device*,int ) ;
 int pm_request_autosuspend (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int schedule_work (int *) ;

void mei_host_client_init(struct mei_device *dev)
{
 mei_set_devstate(dev, MEI_DEV_ENABLED);
 dev->reset_count = 0;

 schedule_work(&dev->bus_rescan_work);

 pm_runtime_mark_last_busy(dev->dev);
 dev_dbg(dev->dev, "rpm: autosuspend\n");
 pm_request_autosuspend(dev->dev);
}
