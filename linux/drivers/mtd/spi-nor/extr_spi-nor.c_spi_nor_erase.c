
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u32 ;
struct spi_nor {int flags; int dev; } ;
struct mtd_info {int erasesize; int size; } ;
struct erase_info {int addr; int len; } ;


 unsigned long CHIP_ERASE_2MB_READY_WAIT_JIFFIES ;
 int EINVAL ;
 int EIO ;
 int SNOR_F_NO_OP_CHIP_ERASE ;
 int SPI_NOR_OPS_ERASE ;
 int SZ_2M ;
 int dev_dbg (int ,char*,long long,long long) ;
 int div_u64_rem (int,int,scalar_t__*) ;
 scalar_t__ erase_chip (struct spi_nor*) ;
 unsigned long max (unsigned long,unsigned long) ;
 struct spi_nor* mtd_to_spi_nor (struct mtd_info*) ;
 int spi_nor_erase_multi_sectors (struct spi_nor*,int,int) ;
 int spi_nor_erase_sector (struct spi_nor*,int) ;
 scalar_t__ spi_nor_has_uniform_erase (struct spi_nor*) ;
 int spi_nor_lock_and_prep (struct spi_nor*,int ) ;
 int spi_nor_unlock_and_unprep (struct spi_nor*,int ) ;
 int spi_nor_wait_till_ready (struct spi_nor*) ;
 int spi_nor_wait_till_ready_with_timeout (struct spi_nor*,unsigned long) ;
 int write_disable (struct spi_nor*) ;
 int write_enable (struct spi_nor*) ;

__attribute__((used)) static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 struct spi_nor *nor = mtd_to_spi_nor(mtd);
 u32 addr, len;
 uint32_t rem;
 int ret;

 dev_dbg(nor->dev, "at 0x%llx, len %lld\n", (long long)instr->addr,
   (long long)instr->len);

 if (spi_nor_has_uniform_erase(nor)) {
  div_u64_rem(instr->len, mtd->erasesize, &rem);
  if (rem)
   return -EINVAL;
 }

 addr = instr->addr;
 len = instr->len;

 ret = spi_nor_lock_and_prep(nor, SPI_NOR_OPS_ERASE);
 if (ret)
  return ret;


 if (len == mtd->size && !(nor->flags & SNOR_F_NO_OP_CHIP_ERASE)) {
  unsigned long timeout;

  write_enable(nor);

  if (erase_chip(nor)) {
   ret = -EIO;
   goto erase_err;
  }







  timeout = max(CHIP_ERASE_2MB_READY_WAIT_JIFFIES,
         CHIP_ERASE_2MB_READY_WAIT_JIFFIES *
         (unsigned long)(mtd->size / SZ_2M));
  ret = spi_nor_wait_till_ready_with_timeout(nor, timeout);
  if (ret)
   goto erase_err;







 } else if (spi_nor_has_uniform_erase(nor)) {
  while (len) {
   write_enable(nor);

   ret = spi_nor_erase_sector(nor, addr);
   if (ret)
    goto erase_err;

   addr += mtd->erasesize;
   len -= mtd->erasesize;

   ret = spi_nor_wait_till_ready(nor);
   if (ret)
    goto erase_err;
  }


 } else {
  ret = spi_nor_erase_multi_sectors(nor, addr, len);
  if (ret)
   goto erase_err;
 }

 write_disable(nor);

erase_err:
 spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_ERASE);

 return ret;
}
