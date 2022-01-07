
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;
struct abx500_ops {int (* get_chip_id ) (struct device*) ;} ;


 int ENOTSUPP ;
 int lookup_ops (int ,struct abx500_ops**) ;
 int stub1 (struct device*) ;

int abx500_get_chip_id(struct device *dev)
{
 struct abx500_ops *ops;

 lookup_ops(dev->parent, &ops);
 if (ops && ops->get_chip_id)
  return ops->get_chip_id(dev);
 else
  return -ENOTSUPP;
}
