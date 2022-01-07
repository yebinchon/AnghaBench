
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_nor {int dummy; } ;


 int EIO ;
 int spi_nor_read_data (struct spi_nor*,int,size_t,int *) ;

__attribute__((used)) static int spi_nor_read_raw(struct spi_nor *nor, u32 addr, size_t len, u8 *buf)
{
 int ret;

 while (len) {
  ret = spi_nor_read_data(nor, addr, len, buf);
  if (ret < 0)
   return ret;
  if (!ret || ret > len)
   return -EIO;

  buf += ret;
  addr += ret;
  len -= ret;
 }
 return 0;
}
