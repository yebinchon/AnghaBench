
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct as10x_bus_adapter_t {int lock; TYPE_1__* ops; } ;
struct as102_dev_t {struct as10x_bus_adapter_t bus_adap; } ;
struct TYPE_2__ {int (* start_stream ) (struct as102_dev_t*) ;} ;


 int EFAULT ;
 int as10x_cmd_start_streaming (struct as10x_bus_adapter_t*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct as102_dev_t*) ;
 scalar_t__ ts_auto_disable ;

__attribute__((used)) static int as102_start_stream(struct as102_dev_t *dev)
{
 struct as10x_bus_adapter_t *bus_adap;
 int ret = -EFAULT;

 if (dev != ((void*)0))
  bus_adap = &dev->bus_adap;
 else
  return ret;

 if (bus_adap->ops->start_stream != ((void*)0))
  ret = bus_adap->ops->start_stream(dev);

 if (ts_auto_disable) {
  if (mutex_lock_interruptible(&dev->bus_adap.lock))
   return -EFAULT;

  ret = as10x_cmd_start_streaming(bus_adap);

  mutex_unlock(&dev->bus_adap.lock);
 }

 return ret;
}
