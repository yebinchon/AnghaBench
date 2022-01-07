
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int asic_type; int asic_rev; int serial_num; int fw_version; } ;
struct ionic_dev {TYPE_1__ dev_info; } ;
struct ionic {struct ionic_dev idev; } ;
struct devlink_info_req {int dummy; } ;
struct devlink {int dummy; } ;
typedef int buf ;


 int DEVLINK_INFO_VERSION_GENERIC_ASIC_ID ;
 int DEVLINK_INFO_VERSION_GENERIC_ASIC_REV ;
 int DEVLINK_INFO_VERSION_GENERIC_FW ;
 int IONIC_DRV_NAME ;
 int devlink_info_driver_name_put (struct devlink_info_req*,int ) ;
 int devlink_info_serial_number_put (struct devlink_info_req*,int ) ;
 int devlink_info_version_fixed_put (struct devlink_info_req*,int ,char*) ;
 int devlink_info_version_running_put (struct devlink_info_req*,int ,int ) ;
 struct ionic* devlink_priv (struct devlink*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int ionic_dl_info_get(struct devlink *dl, struct devlink_info_req *req,
        struct netlink_ext_ack *extack)
{
 struct ionic *ionic = devlink_priv(dl);
 struct ionic_dev *idev = &ionic->idev;
 char buf[16];
 int err = 0;

 err = devlink_info_driver_name_put(req, IONIC_DRV_NAME);
 if (err)
  goto info_out;

 err = devlink_info_version_running_put(req,
            DEVLINK_INFO_VERSION_GENERIC_FW,
            idev->dev_info.fw_version);
 if (err)
  goto info_out;

 snprintf(buf, sizeof(buf), "0x%x", idev->dev_info.asic_type);
 err = devlink_info_version_fixed_put(req,
          DEVLINK_INFO_VERSION_GENERIC_ASIC_ID,
          buf);
 if (err)
  goto info_out;

 snprintf(buf, sizeof(buf), "0x%x", idev->dev_info.asic_rev);
 err = devlink_info_version_fixed_put(req,
          DEVLINK_INFO_VERSION_GENERIC_ASIC_REV,
          buf);
 if (err)
  goto info_out;

 err = devlink_info_serial_number_put(req, idev->dev_info.serial_num);

info_out:
 return err;
}
