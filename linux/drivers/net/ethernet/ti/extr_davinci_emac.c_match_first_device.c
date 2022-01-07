
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* parent; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;


 int dev_name (struct device*) ;
 int of_device_is_compatible (scalar_t__,char*) ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int match_first_device(struct device *dev, const void *data)
{
 if (dev->parent && dev->parent->of_node)
  return of_device_is_compatible(dev->parent->of_node,
            "ti,davinci_mdio");

 return !strncmp(dev_name(dev), "davinci_mdio", 12);
}
