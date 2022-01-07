
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct dataflash {int mtd; } ;


 int dev_dbg (int *,char*) ;
 int kfree (struct dataflash*) ;
 int mtd_device_unregister (int *) ;
 struct dataflash* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int dataflash_remove(struct spi_device *spi)
{
 struct dataflash *flash = spi_get_drvdata(spi);
 int status;

 dev_dbg(&spi->dev, "remove\n");

 status = mtd_device_unregister(&flash->mtd);
 if (status == 0)
  kfree(flash);
 return status;
}
