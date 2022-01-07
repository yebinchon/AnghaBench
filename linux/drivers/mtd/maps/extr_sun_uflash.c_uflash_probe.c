
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int of_find_property (struct device_node*,char*,int *) ;
 int uflash_devinit (struct platform_device*,struct device_node*) ;

__attribute__((used)) static int uflash_probe(struct platform_device *op)
{
 struct device_node *dp = op->dev.of_node;




 if (!of_find_property(dp, "user", ((void*)0)))
  return -ENODEV;

 return uflash_devinit(op, dp);
}
