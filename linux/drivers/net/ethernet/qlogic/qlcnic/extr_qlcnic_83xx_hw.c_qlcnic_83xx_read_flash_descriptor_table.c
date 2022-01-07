
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qlcnic_fdt {int dummy; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {int fdt; } ;


 int EIO ;
 int QLCNIC_FDT_LOCATION ;
 int memset (int *,int ,int) ;
 scalar_t__ qlcnic_83xx_lock_flash (struct qlcnic_adapter*) ;
 int qlcnic_83xx_lockless_flash_read32 (struct qlcnic_adapter*,int ,int *,int) ;
 int qlcnic_83xx_unlock_flash (struct qlcnic_adapter*) ;
 int qlcnic_swap32_buffer (int *,int) ;

int qlcnic_83xx_read_flash_descriptor_table(struct qlcnic_adapter *adapter)
{
 int count, fdt_size, ret = 0;

 fdt_size = sizeof(struct qlcnic_fdt);
 count = fdt_size / sizeof(u32);

 if (qlcnic_83xx_lock_flash(adapter))
  return -EIO;

 memset(&adapter->ahw->fdt, 0, fdt_size);
 ret = qlcnic_83xx_lockless_flash_read32(adapter, QLCNIC_FDT_LOCATION,
      (u8 *)&adapter->ahw->fdt,
      count);
 qlcnic_swap32_buffer((u32 *)&adapter->ahw->fdt, count);
 qlcnic_83xx_unlock_flash(adapter);
 return ret;
}
