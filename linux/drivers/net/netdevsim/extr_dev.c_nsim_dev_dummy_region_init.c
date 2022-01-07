
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_dev {int dummy_region; } ;
struct devlink {int dummy; } ;


 int NSIM_DEV_DUMMY_REGION_SIZE ;
 int NSIM_DEV_DUMMY_REGION_SNAPSHOT_MAX ;
 int PTR_ERR_OR_ZERO (int ) ;
 int devlink_region_create (struct devlink*,char*,int ,int ) ;

__attribute__((used)) static int nsim_dev_dummy_region_init(struct nsim_dev *nsim_dev,
          struct devlink *devlink)
{
 nsim_dev->dummy_region =
  devlink_region_create(devlink, "dummy",
          NSIM_DEV_DUMMY_REGION_SNAPSHOT_MAX,
          NSIM_DEV_DUMMY_REGION_SIZE);
 return PTR_ERR_OR_ZERO(nsim_dev->dummy_region);
}
