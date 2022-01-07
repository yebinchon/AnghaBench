
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {int dummy; } ;


 int ksz9477_dev_ops ;
 int ksz_switch_register (struct ksz_device*,int *) ;

int ksz9477_switch_register(struct ksz_device *dev)
{
 return ksz_switch_register(dev, &ksz9477_dev_ops);
}
