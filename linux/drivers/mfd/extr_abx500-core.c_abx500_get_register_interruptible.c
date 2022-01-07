
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int parent; } ;
struct abx500_ops {int (* get_register ) (struct device*,int ,int ,int *) ;} ;


 int ENOTSUPP ;
 int lookup_ops (int ,struct abx500_ops**) ;
 int stub1 (struct device*,int ,int ,int *) ;

int abx500_get_register_interruptible(struct device *dev, u8 bank, u8 reg,
 u8 *value)
{
 struct abx500_ops *ops;

 lookup_ops(dev->parent, &ops);
 if (ops && ops->get_register)
  return ops->get_register(dev, bank, reg, value);
 else
  return -ENOTSUPP;
}
