
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {int (* read ) (struct spi_nor*,int ,size_t,int *) ;scalar_t__ spimem; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int spi_nor_spimem_read_data (struct spi_nor*,int ,size_t,int *) ;
 int stub1 (struct spi_nor*,int ,size_t,int *) ;

__attribute__((used)) static ssize_t spi_nor_read_data(struct spi_nor *nor, loff_t from, size_t len,
     u8 *buf)
{
 if (nor->spimem)
  return spi_nor_spimem_read_data(nor, from, len, buf);

 return nor->read(nor, from, len, buf);
}
