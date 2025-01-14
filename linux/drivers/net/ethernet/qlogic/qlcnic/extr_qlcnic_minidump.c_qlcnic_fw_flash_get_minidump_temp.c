
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;


 int EIO ;
 int QLC_83XX_MINIDUMP_FLASH ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_lock_flash (struct qlcnic_adapter*) ;
 int qlcnic_83xx_lockless_flash_read32 (struct qlcnic_adapter*,int ,int *,int) ;
 int qlcnic_83xx_unlock_flash (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_fw_flash_get_minidump_temp(struct qlcnic_adapter *adapter,
          u8 *buffer, u32 size)
{
 int ret = 0;

 if (qlcnic_82xx_check(adapter))
  return -EIO;

 if (qlcnic_83xx_lock_flash(adapter))
  return -EIO;

 ret = qlcnic_83xx_lockless_flash_read32(adapter,
      QLC_83XX_MINIDUMP_FLASH,
      buffer, size / sizeof(u32));

 qlcnic_83xx_unlock_flash(adapter);

 return ret;
}
