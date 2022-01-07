
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst25l_flash {int mtd; } ;
struct spi_device {int dummy; } ;


 int mtd_device_unregister (int *) ;
 struct sst25l_flash* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int sst25l_remove(struct spi_device *spi)
{
 struct sst25l_flash *flash = spi_get_drvdata(spi);

 return mtd_device_unregister(&flash->mtd);
}
