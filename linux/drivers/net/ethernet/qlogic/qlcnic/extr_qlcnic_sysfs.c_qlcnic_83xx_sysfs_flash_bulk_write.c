
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {scalar_t__ flash_mfg_id; TYPE_2__* ahw; } ;
typedef int loff_t ;
struct TYPE_3__ {scalar_t__ mfg_id; } ;
struct TYPE_4__ {TYPE_1__ fdt; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QLC_83XX_FLASH_WRITE_MAX ;
 unsigned char* kcalloc (size_t,int,int ) ;
 int kfree (unsigned char*) ;
 int memcpy (unsigned char*,char*,size_t) ;
 int qlcnic_83xx_disable_flash_write (struct qlcnic_adapter*) ;
 int qlcnic_83xx_enable_flash_write (struct qlcnic_adapter*) ;
 int qlcnic_83xx_flash_bulk_write (struct qlcnic_adapter*,int ,int *,int) ;
 scalar_t__ qlcnic_83xx_lock_flash (struct qlcnic_adapter*) ;
 int qlcnic_83xx_unlock_flash (struct qlcnic_adapter*) ;
 int qlcnic_swap32_buffer (int *,int) ;

__attribute__((used)) static int qlcnic_83xx_sysfs_flash_bulk_write(struct qlcnic_adapter *adapter,
           char *buf, loff_t offset,
           size_t size)
{
 int i, ret, count;
 unsigned char *p_cache, *p_src;

 p_cache = kcalloc(size, sizeof(unsigned char), GFP_KERNEL);
 if (!p_cache)
  return -ENOMEM;

 count = size / sizeof(u32);
 qlcnic_swap32_buffer((u32 *)buf, count);
 memcpy(p_cache, buf, size);
 p_src = p_cache;

 if (qlcnic_83xx_lock_flash(adapter) != 0) {
  kfree(p_cache);
  return -EIO;
 }

 if (adapter->ahw->fdt.mfg_id == adapter->flash_mfg_id) {
  ret = qlcnic_83xx_enable_flash_write(adapter);
  if (ret) {
   kfree(p_cache);
   qlcnic_83xx_unlock_flash(adapter);
   return -EIO;
  }
 }

 for (i = 0; i < count / QLC_83XX_FLASH_WRITE_MAX; i++) {
  ret = qlcnic_83xx_flash_bulk_write(adapter, offset,
         (u32 *)p_src,
         QLC_83XX_FLASH_WRITE_MAX);

  if (ret) {
   if (adapter->ahw->fdt.mfg_id == adapter->flash_mfg_id) {
    ret = qlcnic_83xx_disable_flash_write(adapter);
    if (ret) {
     kfree(p_cache);
     qlcnic_83xx_unlock_flash(adapter);
     return -EIO;
    }
   }

   kfree(p_cache);
   qlcnic_83xx_unlock_flash(adapter);
   return -EIO;
  }

  p_src = p_src + sizeof(u32)*QLC_83XX_FLASH_WRITE_MAX;
  offset = offset + sizeof(u32)*QLC_83XX_FLASH_WRITE_MAX;
 }

 if (adapter->ahw->fdt.mfg_id == adapter->flash_mfg_id) {
  ret = qlcnic_83xx_disable_flash_write(adapter);
  if (ret) {
   kfree(p_cache);
   qlcnic_83xx_unlock_flash(adapter);
   return -EIO;
  }
 }

 kfree(p_cache);
 qlcnic_83xx_unlock_flash(adapter);

 return 0;
}
