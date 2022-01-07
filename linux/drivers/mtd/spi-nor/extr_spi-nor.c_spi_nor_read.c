
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u32 ;
struct spi_nor {int dev; } ;
struct mtd_info {int dummy; } ;
typedef scalar_t__ loff_t ;


 int EIO ;
 int SPI_NOR_OPS_READ ;
 int WARN_ON (int) ;
 int dev_dbg (int ,char*,int ,size_t) ;
 struct spi_nor* mtd_to_spi_nor (struct mtd_info*) ;
 scalar_t__ spi_nor_convert_addr (struct spi_nor*,scalar_t__) ;
 int spi_nor_lock_and_prep (struct spi_nor*,int ) ;
 int spi_nor_read_data (struct spi_nor*,scalar_t__,size_t,int *) ;
 int spi_nor_unlock_and_unprep (struct spi_nor*,int ) ;

__attribute__((used)) static int spi_nor_read(struct mtd_info *mtd, loff_t from, size_t len,
   size_t *retlen, u_char *buf)
{
 struct spi_nor *nor = mtd_to_spi_nor(mtd);
 int ret;

 dev_dbg(nor->dev, "from 0x%08x, len %zd\n", (u32)from, len);

 ret = spi_nor_lock_and_prep(nor, SPI_NOR_OPS_READ);
 if (ret)
  return ret;

 while (len) {
  loff_t addr = from;

  addr = spi_nor_convert_addr(nor, addr);

  ret = spi_nor_read_data(nor, addr, len, buf);
  if (ret == 0) {

   ret = -EIO;
   goto read_err;
  }
  if (ret < 0)
   goto read_err;

  WARN_ON(ret > len);
  *retlen += ret;
  buf += ret;
  from += ret;
  len -= ret;
 }
 ret = 0;

read_err:
 spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_READ);
 return ret;
}
