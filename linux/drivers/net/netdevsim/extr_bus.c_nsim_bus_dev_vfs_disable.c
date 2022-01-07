
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_bus_dev {scalar_t__ num_vfs; int * vfconfigs; } ;


 int kfree (int *) ;

__attribute__((used)) static void nsim_bus_dev_vfs_disable(struct nsim_bus_dev *nsim_bus_dev)
{
 kfree(nsim_bus_dev->vfconfigs);
 nsim_bus_dev->vfconfigs = ((void*)0);
 nsim_bus_dev->num_vfs = 0;
}
