
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct as10x_bus_adapter_t {int lock; } ;


 int CONTEXT_LNA ;
 int EBUSY ;
 int as10x_cmd_set_context (struct as10x_bus_adapter_t*,int ,int ) ;
 int as10x_cmd_turn_off (struct as10x_bus_adapter_t*) ;
 int as10x_cmd_turn_on (struct as10x_bus_adapter_t*) ;
 scalar_t__ elna_enable ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int as102_stream_ctrl(void *priv, int acquire, uint32_t elna_cfg)
{
 struct as10x_bus_adapter_t *bus_adap = priv;
 int ret;

 if (mutex_lock_interruptible(&bus_adap->lock))
  return -EBUSY;

 if (acquire) {
  if (elna_enable)
   as10x_cmd_set_context(bus_adap,
           CONTEXT_LNA, elna_cfg);

  ret = as10x_cmd_turn_on(bus_adap);
 } else {
  ret = as10x_cmd_turn_off(bus_adap);
 }

 mutex_unlock(&bus_adap->lock);

 return ret;
}
