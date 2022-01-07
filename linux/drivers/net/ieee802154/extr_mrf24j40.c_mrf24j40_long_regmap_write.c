
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int EINVAL ;
 int memcpy (int*,void const*,size_t) ;
 int spi_write (struct spi_device*,int*,size_t) ;

__attribute__((used)) static int mrf24j40_long_regmap_write(void *context, const void *data,
          size_t count)
{
 struct spi_device *spi = context;
 u8 buf[3];

 if (count > 3)
  return -EINVAL;





 memcpy(buf, data, count);
 buf[1] |= (1 << 4);

 return spi_write(spi, buf, count);
}
