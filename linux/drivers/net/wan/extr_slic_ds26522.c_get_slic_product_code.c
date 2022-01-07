
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int DS26522_IDR_ADDR ;
 int slic_read (struct spi_device*,int ) ;

__attribute__((used)) static bool get_slic_product_code(struct spi_device *spi)
{
 u8 device_id;

 device_id = slic_read(spi, DS26522_IDR_ADDR);
 if ((device_id & 0xf8) == 0x68)
  return 1;
 else
  return 0;
}
