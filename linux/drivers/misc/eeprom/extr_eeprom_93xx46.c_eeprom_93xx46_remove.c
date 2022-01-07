
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct eeprom_93xx46_dev {TYPE_1__* pdata; } ;
struct TYPE_2__ {int flags; } ;


 int EE_READONLY ;
 int dev_attr_erase ;
 int device_remove_file (int *,int *) ;
 struct eeprom_93xx46_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int eeprom_93xx46_remove(struct spi_device *spi)
{
 struct eeprom_93xx46_dev *edev = spi_get_drvdata(spi);

 if (!(edev->pdata->flags & EE_READONLY))
  device_remove_file(&spi->dev, &dev_attr_erase);

 return 0;
}
