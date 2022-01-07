
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int of_node; } ;
struct spi_device {TYPE_3__ dev; } ;
struct TYPE_9__ {TYPE_3__* parent; } ;
struct TYPE_12__ {int writesize; int _write; int _read; int size; int flags; int type; TYPE_1__ dev; } ;
struct mchp23k256_flash {TYPE_4__ mtd; TYPE_2__* caps; int lock; struct spi_device* spi; } ;
struct flash_platform_data {int nr_parts; int * parts; } ;
struct TYPE_10__ {int size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MTD_CAP_RAM ;
 int MTD_RAM ;
 struct flash_platform_data* dev_get_platdata (TYPE_3__*) ;
 struct mchp23k256_flash* devm_kzalloc (TYPE_3__*,int,int ) ;
 TYPE_2__ mchp23k256_caps ;
 int mchp23k256_read ;
 int mchp23k256_set_mode (struct spi_device*) ;
 int mchp23k256_write ;
 int mtd_device_register (TYPE_4__*,int *,int ) ;
 int mtd_set_of_node (TYPE_4__*,int ) ;
 int mutex_init (int *) ;
 TYPE_2__* of_device_get_match_data (TYPE_3__*) ;
 int spi_set_drvdata (struct spi_device*,struct mchp23k256_flash*) ;

__attribute__((used)) static int mchp23k256_probe(struct spi_device *spi)
{
 struct mchp23k256_flash *flash;
 struct flash_platform_data *data;
 int err;

 flash = devm_kzalloc(&spi->dev, sizeof(*flash), GFP_KERNEL);
 if (!flash)
  return -ENOMEM;

 flash->spi = spi;
 mutex_init(&flash->lock);
 spi_set_drvdata(spi, flash);

 err = mchp23k256_set_mode(spi);
 if (err)
  return err;

 data = dev_get_platdata(&spi->dev);

 flash->caps = of_device_get_match_data(&spi->dev);
 if (!flash->caps)
  flash->caps = &mchp23k256_caps;

 mtd_set_of_node(&flash->mtd, spi->dev.of_node);
 flash->mtd.dev.parent = &spi->dev;
 flash->mtd.type = MTD_RAM;
 flash->mtd.flags = MTD_CAP_RAM;
 flash->mtd.writesize = 1;
 flash->mtd.size = flash->caps->size;
 flash->mtd._read = mchp23k256_read;
 flash->mtd._write = mchp23k256_write;

 err = mtd_device_register(&flash->mtd, data ? data->parts : ((void*)0),
      data ? data->nr_parts : 0);
 if (err)
  return err;

 return 0;
}
