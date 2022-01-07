
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* pdev; TYPE_1__* ahw; } ;
struct qlc_83xx_fw_info {int fw_file_name; int fw; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct qlc_83xx_fw_info* fw_info; } ;


 int EIO ;
 int QLCNIC_FW_IMG_VALID ;
 int QLC_83XX_BOOT_FROM_FILE ;
 int QLC_83XX_BOOT_FROM_FLASH ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int ) ;
 int dev_err (int *,char*) ;
 scalar_t__ qlcnic_83xx_copy_fw_file (struct qlcnic_adapter*) ;
 scalar_t__ request_firmware (int *,int ,int *) ;

__attribute__((used)) static int qlcnic_83xx_load_fw_image_from_host(struct qlcnic_adapter *adapter)
{
 struct qlc_83xx_fw_info *fw_info = adapter->ahw->fw_info;
 int err = -EIO;

 if (request_firmware(&fw_info->fw, fw_info->fw_file_name,
        &(adapter->pdev->dev))) {
  dev_err(&adapter->pdev->dev,
   "No file FW image, loading flash FW image.\n");
  QLC_SHARED_REG_WR32(adapter, QLCNIC_FW_IMG_VALID,
        QLC_83XX_BOOT_FROM_FLASH);
 } else {
  if (qlcnic_83xx_copy_fw_file(adapter))
   return err;
  QLC_SHARED_REG_WR32(adapter, QLCNIC_FW_IMG_VALID,
        QLC_83XX_BOOT_FROM_FILE);
 }

 return 0;
}
