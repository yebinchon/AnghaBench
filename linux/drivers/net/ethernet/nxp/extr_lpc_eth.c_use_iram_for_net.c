
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ of_node; } ;


 int of_property_read_bool (scalar_t__,char*) ;

__attribute__((used)) static bool use_iram_for_net(struct device *dev)
{
 if (dev && dev->of_node)
  return of_property_read_bool(dev->of_node, "use-iram");
 return 0;
}
