
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_bus_dev {int dummy; } ;
struct device {int dummy; } ;


 int nsim_dev_remove (struct nsim_bus_dev*) ;
 struct nsim_bus_dev* to_nsim_bus_dev (struct device*) ;

__attribute__((used)) static int nsim_bus_remove(struct device *dev)
{
 struct nsim_bus_dev *nsim_bus_dev = to_nsim_bus_dev(dev);

 nsim_dev_remove(nsim_bus_dev);
 return 0;
}
