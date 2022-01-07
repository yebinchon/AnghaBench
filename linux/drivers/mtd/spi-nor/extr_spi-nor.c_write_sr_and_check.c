
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {int dummy; } ;


 int EIO ;
 int read_sr (struct spi_nor*) ;
 int spi_nor_wait_till_ready (struct spi_nor*) ;
 int write_enable (struct spi_nor*) ;
 int write_sr (struct spi_nor*,int) ;

__attribute__((used)) static int write_sr_and_check(struct spi_nor *nor, u8 status_new, u8 mask)
{
 int ret;

 write_enable(nor);
 ret = write_sr(nor, status_new);
 if (ret)
  return ret;

 ret = spi_nor_wait_till_ready(nor);
 if (ret)
  return ret;

 ret = read_sr(nor);
 if (ret < 0)
  return ret;

 return ((ret & mask) != (status_new & mask)) ? -EIO : 0;
}
