
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {int (* write ) (struct spi_nor*,int ,size_t,int const*) ;scalar_t__ spimem; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int spi_nor_spimem_write_data (struct spi_nor*,int ,size_t,int const*) ;
 int stub1 (struct spi_nor*,int ,size_t,int const*) ;

__attribute__((used)) static ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
      const u8 *buf)
{
 if (nor->spimem)
  return spi_nor_spimem_write_data(nor, to, len, buf);

 return nor->write(nor, to, len, buf);
}
