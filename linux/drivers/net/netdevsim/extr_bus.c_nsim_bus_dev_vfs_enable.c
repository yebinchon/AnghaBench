
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_vf_config {int dummy; } ;
struct nsim_bus_dev {unsigned int num_vfs; int vfconfigs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (unsigned int,int,int ) ;

__attribute__((used)) static int nsim_bus_dev_vfs_enable(struct nsim_bus_dev *nsim_bus_dev,
       unsigned int num_vfs)
{
 nsim_bus_dev->vfconfigs = kcalloc(num_vfs,
       sizeof(struct nsim_vf_config),
       GFP_KERNEL);
 if (!nsim_bus_dev->vfconfigs)
  return -ENOMEM;
 nsim_bus_dev->num_vfs = num_vfs;

 return 0;
}
