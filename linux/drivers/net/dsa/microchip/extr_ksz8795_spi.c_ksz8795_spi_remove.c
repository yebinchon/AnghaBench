
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct ksz_device {int dummy; } ;


 int ksz_switch_remove (struct ksz_device*) ;
 struct ksz_device* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ksz8795_spi_remove(struct spi_device *spi)
{
 struct ksz_device *dev = spi_get_drvdata(spi);

 if (dev)
  ksz_switch_remove(dev);

 return 0;
}
