
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct as10x_tune_args {int dummy; } ;
struct as10x_bus_adapter_t {int lock; TYPE_1__* usb_dev; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int as10x_cmd_set_tune (struct as10x_bus_adapter_t*,struct as10x_tune_args*) ;
 int dev_dbg (int *,char*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int as102_set_tune(void *priv, struct as10x_tune_args *tune_args)
{
 struct as10x_bus_adapter_t *bus_adap = priv;
 int ret;


 if (mutex_lock_interruptible(&bus_adap->lock))
  return -EBUSY;

 ret = as10x_cmd_set_tune(bus_adap, tune_args);
 if (ret != 0)
  dev_dbg(&bus_adap->usb_dev->dev,
   "as10x_cmd_set_tune failed. (err = %d)\n", ret);

 mutex_unlock(&bus_adap->lock);

 return ret;
}
