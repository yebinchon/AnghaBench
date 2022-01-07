
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_bus_dev {int num_vfs; } ;
struct device {int dummy; } ;


 struct nsim_bus_dev* to_nsim_bus_dev (struct device*) ;

__attribute__((used)) static int nsim_num_vf(struct device *dev)
{
 struct nsim_bus_dev *nsim_bus_dev = to_nsim_bus_dev(dev);

 return nsim_bus_dev->num_vfs;
}
