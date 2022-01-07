
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct qlc_83xx_fw_info {int fw_file_name; int fw; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int post_mode; struct qlc_83xx_fw_info* fw_info; } ;
struct TYPE_3__ {struct device dev; } ;


 int EINVAL ;
 int EIO ;
 int QLCNIC_FW_IMG_VALID ;
 int QLC_83XX_BOOT_FROM_FILE ;




 int QLC_83XX_POST_FAST_MODE_TIMEOUT ;

 int QLC_83XX_POST_FW_FILE_NAME ;

 int QLC_83XX_POST_MED_MODE_TIMEOUT ;
 int QLC_83XX_POST_MODE_REG ;

 int QLC_83XX_POST_SIGNATURE_REG ;

 int QLC_83XX_POST_SLOW_MODE_TIMEOUT ;
 int QLC_FW_FILE_NAME_LEN ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int) ;
 int msleep (int) ;
 int qlcnic_83xx_copy_fw_file (struct qlcnic_adapter*) ;
 int qlcnic_83xx_start_hw (struct qlcnic_adapter*) ;
 int qlcnic_ind_rd (struct qlcnic_adapter*,int ) ;
 int qlcnic_ind_wr (struct qlcnic_adapter*,int ,int) ;
 int request_firmware (int *,int ,struct device*) ;
 int strncpy (int ,int ,int ) ;

__attribute__((used)) static int qlcnic_83xx_run_post(struct qlcnic_adapter *adapter)
{
 struct qlc_83xx_fw_info *fw_info = adapter->ahw->fw_info;
 struct device *dev = &adapter->pdev->dev;
 int timeout, count, ret = 0;
 u32 signature;


 switch (adapter->ahw->post_mode) {
 case 132:
  timeout = QLC_83XX_POST_FAST_MODE_TIMEOUT + 2000;
  break;
 case 130:
  timeout = QLC_83XX_POST_MED_MODE_TIMEOUT + 2000;
  break;
 case 128:
  timeout = QLC_83XX_POST_SLOW_MODE_TIMEOUT + 2000;
  break;
 default:
  return -EINVAL;
 }

 strncpy(fw_info->fw_file_name, QLC_83XX_POST_FW_FILE_NAME,
  QLC_FW_FILE_NAME_LEN);

 ret = request_firmware(&fw_info->fw, fw_info->fw_file_name, dev);
 if (ret) {
  dev_err(dev, "POST firmware can not be loaded, skipping POST\n");
  return 0;
 }

 ret = qlcnic_83xx_copy_fw_file(adapter);
 if (ret)
  return ret;


 qlcnic_ind_wr(adapter, QLC_83XX_POST_SIGNATURE_REG, 0);


 qlcnic_ind_wr(adapter, QLC_83XX_POST_MODE_REG,
        adapter->ahw->post_mode);

 QLC_SHARED_REG_WR32(adapter, QLCNIC_FW_IMG_VALID,
       QLC_83XX_BOOT_FROM_FILE);

 qlcnic_83xx_start_hw(adapter);

 count = 0;
 do {
  msleep(100);
  count += 100;

  signature = qlcnic_ind_rd(adapter, QLC_83XX_POST_SIGNATURE_REG);
  if (signature == 129)
   break;
 } while (timeout > count);

 if (timeout <= count) {
  dev_err(dev, "POST timed out, signature = 0x%08x\n", signature);
  return -EIO;
 }

 switch (signature) {
 case 129:
  dev_info(dev, "POST passed, Signature = 0x%08x\n", signature);
  break;
 case 134:
  dev_err(dev, "POST failed, Test case : ASIC STRESS TEST, Signature = 0x%08x\n",
   signature);
  ret = -EIO;
  break;
 case 133:
  dev_err(dev, "POST failed, Test case : DDT TEST, Signature = 0x%08x\n",
   signature);
  ret = -EIO;
  break;
 case 135:
  dev_err(dev, "POST failed, Test case : ASIC MEMORY TEST, Signature = 0x%08x\n",
   signature);
  ret = -EIO;
  break;
 case 131:
  dev_err(dev, "POST failed, Test case : FLASH TEST, Signature = 0x%08x\n",
   signature);
  ret = -EIO;
  break;
 default:
  dev_err(dev, "POST failed, Test case : INVALID, Signature = 0x%08x\n",
   signature);
  ret = -EIO;
  break;
 }

 return ret;
}
