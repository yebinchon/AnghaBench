
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spear_snor_flash {int bank; int lock; } ;
struct spear_smi {int num_flashes; TYPE_1__* pdev; } ;
struct mtd_info {scalar_t__ erasesize; struct spear_smi* priv; } ;
struct erase_info {int addr; int len; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENODEV ;
 int dev_err (int *,char*) ;
 struct spear_snor_flash* get_flash_data (struct mtd_info*) ;
 int get_sector_erase_cmd (struct spear_snor_flash*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spear_smi_erase_sector (struct spear_smi*,int,int,int) ;

__attribute__((used)) static int spear_mtd_erase(struct mtd_info *mtd, struct erase_info *e_info)
{
 struct spear_snor_flash *flash = get_flash_data(mtd);
 struct spear_smi *dev = mtd->priv;
 u32 addr, command, bank;
 int len, ret;

 if (!flash || !dev)
  return -ENODEV;

 bank = flash->bank;
 if (bank > dev->num_flashes - 1) {
  dev_err(&dev->pdev->dev, "Invalid Bank Num");
  return -EINVAL;
 }

 addr = e_info->addr;
 len = e_info->len;

 mutex_lock(&flash->lock);


 while (len) {
  command = get_sector_erase_cmd(flash, addr);

  ret = spear_smi_erase_sector(dev, bank, command, 4);
  if (ret) {
   mutex_unlock(&flash->lock);
   return ret;
  }
  addr += mtd->erasesize;
  len -= mtd->erasesize;
 }

 mutex_unlock(&flash->lock);

 return 0;
}
