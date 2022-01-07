
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int driver_ver_str; int os_type; } ;
struct ionic_identity {int dev; TYPE_2__ drv; } ;
struct ionic_dev {TYPE_1__* dev_cmd_regs; } ;
struct ionic {int dev_cmd_lock; struct ionic_dev idev; struct ionic_identity ident; } ;
struct TYPE_3__ {int data; } ;


 int DEVCMD_TIMEOUT ;
 int IONIC_DRV_VERSION ;
 int IONIC_IDENTITY_VERSION_1 ;
 int IONIC_OS_TYPE_LINUX ;
 int cpu_to_le32 (int ) ;
 int ionic_debugfs_add_ident (struct ionic*) ;
 int ionic_dev_cmd_identify (struct ionic_dev*,int ) ;
 int ionic_dev_cmd_wait (struct ionic*,int ) ;
 int memcpy_fromio (int *,int *,size_t) ;
 int memcpy_toio (int *,TYPE_2__*,size_t) ;
 int memset (struct ionic_identity*,int ,int) ;
 size_t min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strncpy (int ,int ,int) ;

int ionic_identify(struct ionic *ionic)
{
 struct ionic_identity *ident = &ionic->ident;
 struct ionic_dev *idev = &ionic->idev;
 size_t sz;
 int err;

 memset(ident, 0, sizeof(*ident));

 ident->drv.os_type = cpu_to_le32(IONIC_OS_TYPE_LINUX);
 strncpy(ident->drv.driver_ver_str, IONIC_DRV_VERSION,
  sizeof(ident->drv.driver_ver_str) - 1);

 mutex_lock(&ionic->dev_cmd_lock);

 sz = min(sizeof(ident->drv), sizeof(idev->dev_cmd_regs->data));
 memcpy_toio(&idev->dev_cmd_regs->data, &ident->drv, sz);

 ionic_dev_cmd_identify(idev, IONIC_IDENTITY_VERSION_1);
 err = ionic_dev_cmd_wait(ionic, DEVCMD_TIMEOUT);
 if (!err) {
  sz = min(sizeof(ident->dev), sizeof(idev->dev_cmd_regs->data));
  memcpy_fromio(&ident->dev, &idev->dev_cmd_regs->data, sz);
 }

 mutex_unlock(&ionic->dev_cmd_lock);

 if (err)
  goto err_out_unmap;

 ionic_debugfs_add_ident(ionic);

 return 0;

err_out_unmap:
 return err;
}
