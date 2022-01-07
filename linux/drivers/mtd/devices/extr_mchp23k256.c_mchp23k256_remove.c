
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct mchp23k256_flash {int mtd; } ;


 int mtd_device_unregister (int *) ;
 struct mchp23k256_flash* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int mchp23k256_remove(struct spi_device *spi)
{
 struct mchp23k256_flash *flash = spi_get_drvdata(spi);

 return mtd_device_unregister(&flash->mtd);
}
