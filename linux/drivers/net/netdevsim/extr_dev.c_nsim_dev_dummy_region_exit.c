
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_dev {int dummy_region; } ;


 int devlink_region_destroy (int ) ;

__attribute__((used)) static void nsim_dev_dummy_region_exit(struct nsim_dev *nsim_dev)
{
 devlink_region_destroy(nsim_dev->dummy_region);
}
