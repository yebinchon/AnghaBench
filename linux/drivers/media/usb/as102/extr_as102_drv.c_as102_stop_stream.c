
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct as10x_bus_adapter_t {int lock; TYPE_1__* usb_dev; TYPE_2__* ops; } ;
struct as102_dev_t {struct as10x_bus_adapter_t bus_adap; } ;
struct TYPE_4__ {int (* stop_stream ) (struct as102_dev_t*) ;} ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ as10x_cmd_stop_streaming (struct as10x_bus_adapter_t*) ;
 int dev_dbg (int *,char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct as102_dev_t*) ;
 scalar_t__ ts_auto_disable ;

__attribute__((used)) static void as102_stop_stream(struct as102_dev_t *dev)
{
 struct as10x_bus_adapter_t *bus_adap;

 if (dev != ((void*)0))
  bus_adap = &dev->bus_adap;
 else
  return;

 if (bus_adap->ops->stop_stream != ((void*)0))
  bus_adap->ops->stop_stream(dev);

 if (ts_auto_disable) {
  if (mutex_lock_interruptible(&dev->bus_adap.lock))
   return;

  if (as10x_cmd_stop_streaming(bus_adap) < 0)
   dev_dbg(&dev->bus_adap.usb_dev->dev,
    "as10x_cmd_stop_streaming failed\n");

  mutex_unlock(&dev->bus_adap.lock);
 }
}
