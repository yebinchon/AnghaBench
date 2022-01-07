
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_bus_dev {int dummy; } ;
struct device {int dummy; } ;


 int nsim_bus_dev_vfs_disable (struct nsim_bus_dev*) ;
 struct nsim_bus_dev* to_nsim_bus_dev (struct device*) ;

__attribute__((used)) static void nsim_bus_dev_release(struct device *dev)
{
 struct nsim_bus_dev *nsim_bus_dev = to_nsim_bus_dev(dev);

 nsim_bus_dev_vfs_disable(nsim_bus_dev);
}
