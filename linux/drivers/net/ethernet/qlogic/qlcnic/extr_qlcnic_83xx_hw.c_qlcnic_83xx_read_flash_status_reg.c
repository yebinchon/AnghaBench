
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;


 int EIO ;
 int QLCRD32 (struct qlcnic_adapter*,int ,int*) ;
 int QLC_83XX_FLASH_ADDR ;
 int QLC_83XX_FLASH_CONTROL ;
 int QLC_83XX_FLASH_OEM_READ_SIG ;
 int QLC_83XX_FLASH_RDDATA ;
 int QLC_83XX_FLASH_READ_CTRL ;
 int qlcnic_83xx_poll_flash_status_reg (struct qlcnic_adapter*) ;
 int qlcnic_83xx_wrt_reg_indirect (struct qlcnic_adapter*,int ,int ) ;

__attribute__((used)) static int qlcnic_83xx_read_flash_status_reg(struct qlcnic_adapter *adapter)
{
 int ret, err = 0;
 u32 temp;

 qlcnic_83xx_wrt_reg_indirect(adapter, QLC_83XX_FLASH_ADDR,
         QLC_83XX_FLASH_OEM_READ_SIG);
 qlcnic_83xx_wrt_reg_indirect(adapter, QLC_83XX_FLASH_CONTROL,
         QLC_83XX_FLASH_READ_CTRL);
 ret = qlcnic_83xx_poll_flash_status_reg(adapter);
 if (ret)
  return -EIO;

 temp = QLCRD32(adapter, QLC_83XX_FLASH_RDDATA, &err);
 if (err == -EIO)
  return err;

 return temp & 0xFF;
}
