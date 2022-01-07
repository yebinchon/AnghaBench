
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int u8 ;
typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int QLCRD32 (struct qlcnic_adapter*,int ,int*) ;
 int QLC_83XX_FLASH_DIRECT_DATA (int) ;
 int QLC_83XX_FLASH_DIRECT_WINDOW ;
 int dev_err (int *,char*,int) ;
 scalar_t__ qlcnic_83xx_lock_flash (struct qlcnic_adapter*) ;
 int qlcnic_83xx_unlock_flash (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_wrt_reg_indirect (struct qlcnic_adapter*,int ,int) ;

int qlcnic_83xx_flash_read32(struct qlcnic_adapter *adapter, u32 flash_addr,
        u8 *p_data, int count)
{
 u32 word, addr = flash_addr, ret;
 ulong indirect_addr;
 int i, err = 0;

 if (qlcnic_83xx_lock_flash(adapter) != 0)
  return -EIO;

 if (addr & 0x3) {
  dev_err(&adapter->pdev->dev, "Illegal addr = 0x%x\n", addr);
  qlcnic_83xx_unlock_flash(adapter);
  return -EIO;
 }

 for (i = 0; i < count; i++) {
  if (qlcnic_83xx_wrt_reg_indirect(adapter,
       QLC_83XX_FLASH_DIRECT_WINDOW,
       (addr))) {
   qlcnic_83xx_unlock_flash(adapter);
   return -EIO;
  }

  indirect_addr = QLC_83XX_FLASH_DIRECT_DATA(addr);
  ret = QLCRD32(adapter, indirect_addr, &err);
  if (err == -EIO)
   return err;

  word = ret;
  *(u32 *)p_data = word;
  p_data = p_data + 4;
  addr = addr + 4;
 }

 qlcnic_83xx_unlock_flash(adapter);

 return 0;
}
