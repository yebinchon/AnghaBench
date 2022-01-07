
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int flash_mfg_id; } ;


 int EIO ;
 int QLCRD32 (struct qlcnic_adapter*,int ,int*) ;
 int QLC_83XX_FLASH_ADDR ;
 int QLC_83XX_FLASH_CONTROL ;
 int QLC_83XX_FLASH_FDT_READ_MFG_ID_VAL ;
 int QLC_83XX_FLASH_RDDATA ;
 int QLC_83XX_FLASH_READ_CTRL ;
 scalar_t__ qlcnic_83xx_lock_flash (struct qlcnic_adapter*) ;
 int qlcnic_83xx_poll_flash_status_reg (struct qlcnic_adapter*) ;
 int qlcnic_83xx_unlock_flash (struct qlcnic_adapter*) ;
 int qlcnic_83xx_wrt_reg_indirect (struct qlcnic_adapter*,int ,int ) ;

int qlcnic_83xx_read_flash_mfg_id(struct qlcnic_adapter *adapter)
{
 int ret, err = 0;
 u32 mfg_id;

 if (qlcnic_83xx_lock_flash(adapter))
  return -EIO;

 qlcnic_83xx_wrt_reg_indirect(adapter, QLC_83XX_FLASH_ADDR,
         QLC_83XX_FLASH_FDT_READ_MFG_ID_VAL);
 qlcnic_83xx_wrt_reg_indirect(adapter, QLC_83XX_FLASH_CONTROL,
         QLC_83XX_FLASH_READ_CTRL);
 ret = qlcnic_83xx_poll_flash_status_reg(adapter);
 if (ret) {
  qlcnic_83xx_unlock_flash(adapter);
  return -EIO;
 }

 mfg_id = QLCRD32(adapter, QLC_83XX_FLASH_RDDATA, &err);
 if (err == -EIO) {
  qlcnic_83xx_unlock_flash(adapter);
  return err;
 }

 adapter->flash_mfg_id = (mfg_id & 0xFF);
 qlcnic_83xx_unlock_flash(adapter);

 return 0;
}
