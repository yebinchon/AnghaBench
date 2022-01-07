
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;
struct ab8500 {scalar_t__ chip_id; } ;


 int EINVAL ;
 struct ab8500* dev_get_drvdata (int ) ;

__attribute__((used)) static int ab8500_get_chip_id(struct device *dev)
{
 struct ab8500 *ab8500;

 if (!dev)
  return -EINVAL;
 ab8500 = dev_get_drvdata(dev->parent);
 return ab8500 ? (int)ab8500->chip_id : -EINVAL;
}
