
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int parent; } ;
struct abx500_ops {int (* mask_and_set_register ) (struct device*,int ,int ,int ,int ) ;} ;


 int ENOTSUPP ;
 int lookup_ops (int ,struct abx500_ops**) ;
 int stub1 (struct device*,int ,int ,int ,int ) ;

int abx500_mask_and_set_register_interruptible(struct device *dev, u8 bank,
 u8 reg, u8 bitmask, u8 bitvalues)
{
 struct abx500_ops *ops;

 lookup_ops(dev->parent, &ops);
 if (ops && ops->mask_and_set_register)
  return ops->mask_and_set_register(dev, bank,
   reg, bitmask, bitvalues);
 else
  return -ENOTSUPP;
}
