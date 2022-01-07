
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sst25l_flash {int lock; TYPE_1__* spi; } ;
struct mtd_info {int erasesize; } ;
struct erase_info {int len; int addr; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sst25l_erase_sector (struct sst25l_flash*,int) ;
 int sst25l_wait_till_ready (struct sst25l_flash*) ;
 struct sst25l_flash* to_sst25l_flash (struct mtd_info*) ;

__attribute__((used)) static int sst25l_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 struct sst25l_flash *flash = to_sst25l_flash(mtd);
 uint32_t addr, end;
 int err;


 if ((uint32_t)instr->len % mtd->erasesize)
  return -EINVAL;

 if ((uint32_t)instr->addr % mtd->erasesize)
  return -EINVAL;

 addr = instr->addr;
 end = addr + instr->len;

 mutex_lock(&flash->lock);

 err = sst25l_wait_till_ready(flash);
 if (err) {
  mutex_unlock(&flash->lock);
  return err;
 }

 while (addr < end) {
  err = sst25l_erase_sector(flash, addr);
  if (err) {
   mutex_unlock(&flash->lock);
   dev_err(&flash->spi->dev, "Erase failed\n");
   return err;
  }

  addr += mtd->erasesize;
 }

 mutex_unlock(&flash->lock);

 return 0;
}
