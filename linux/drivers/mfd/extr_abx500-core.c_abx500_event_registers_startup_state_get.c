
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int parent; } ;
struct abx500_ops {int (* event_registers_startup_state_get ) (struct device*,int *) ;} ;


 int ENOTSUPP ;
 int lookup_ops (int ,struct abx500_ops**) ;
 int stub1 (struct device*,int *) ;

int abx500_event_registers_startup_state_get(struct device *dev, u8 *event)
{
 struct abx500_ops *ops;

 lookup_ops(dev->parent, &ops);
 if (ops && ops->event_registers_startup_state_get)
  return ops->event_registers_startup_state_get(dev, event);
 else
  return -ENOTSUPP;
}
