
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_dev {scalar_t__ fw_update_status; } ;
struct netlink_ext_ack {int dummy; } ;
struct devlink {int dummy; } ;


 int NSIM_DEV_FLASH_CHUNK_SIZE ;
 int NSIM_DEV_FLASH_CHUNK_TIME_MS ;
 int NSIM_DEV_FLASH_SIZE ;
 int devlink_flash_update_begin_notify (struct devlink*) ;
 int devlink_flash_update_end_notify (struct devlink*) ;
 int devlink_flash_update_status_notify (struct devlink*,char*,char const*,int,int) ;
 struct nsim_dev* devlink_priv (struct devlink*) ;
 int msleep (int ) ;

__attribute__((used)) static int nsim_dev_flash_update(struct devlink *devlink, const char *file_name,
     const char *component,
     struct netlink_ext_ack *extack)
{
 struct nsim_dev *nsim_dev = devlink_priv(devlink);
 int i;

 if (nsim_dev->fw_update_status) {
  devlink_flash_update_begin_notify(devlink);
  devlink_flash_update_status_notify(devlink,
         "Preparing to flash",
         component, 0, 0);
 }

 for (i = 0; i < NSIM_DEV_FLASH_SIZE / NSIM_DEV_FLASH_CHUNK_SIZE; i++) {
  if (nsim_dev->fw_update_status)
   devlink_flash_update_status_notify(devlink, "Flashing",
          component,
          i * NSIM_DEV_FLASH_CHUNK_SIZE,
          NSIM_DEV_FLASH_SIZE);
  msleep(NSIM_DEV_FLASH_CHUNK_TIME_MS);
 }

 if (nsim_dev->fw_update_status) {
  devlink_flash_update_status_notify(devlink, "Flashing",
         component,
         NSIM_DEV_FLASH_SIZE,
         NSIM_DEV_FLASH_SIZE);
  devlink_flash_update_status_notify(devlink, "Flashing done",
         component, 0, 0);
  devlink_flash_update_end_notify(devlink);
 }

 return 0;
}
