
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct device {int dummy; } ;


 int spi_write (struct spi_device*,void const*,size_t) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int sprd_pmic_spi_write(void *context, const void *data, size_t count)
{
 struct device *dev = context;
 struct spi_device *spi = to_spi_device(dev);

 return spi_write(spi, data, count);
}
