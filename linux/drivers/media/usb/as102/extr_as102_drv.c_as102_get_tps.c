
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as10x_tps {int dummy; } ;
struct as10x_bus_adapter_t {int lock; } ;


 int EBUSY ;
 int as10x_cmd_get_tps (struct as10x_bus_adapter_t*,struct as10x_tps*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int as102_get_tps(void *priv, struct as10x_tps *tps)
{
 struct as10x_bus_adapter_t *bus_adap = priv;
 int ret;

 if (mutex_lock_interruptible(&bus_adap->lock))
  return -EBUSY;


 ret = as10x_cmd_get_tps(bus_adap, tps);

 mutex_unlock(&bus_adap->lock);

 return ret;
}
