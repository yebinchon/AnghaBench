
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int of_node; } ;
struct spi_device {int chip_select; TYPE_3__ dev; TYPE_1__* master; } ;
struct TYPE_6__ {TYPE_3__* parent; } ;
struct mtd_info {int size; int erasesize; int writesize; TYPE_2__ dev; struct dataflash* priv; int _write; int _read; int _erase; int flags; int type; scalar_t__ name; } ;
struct flash_platform_data {int nr_parts; int * parts; scalar_t__ name; } ;
struct dataflash {int page_size; int page_offset; scalar_t__ name; struct mtd_info mtd; struct spi_device* spi; int lock; } ;
struct TYPE_5__ {int bus_num; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MTD_DATAFLASH ;
 int MTD_WRITEABLE ;
 int dataflash_erase ;
 int dataflash_read ;
 int dataflash_write ;
 struct flash_platform_data* dev_get_platdata (TYPE_3__*) ;
 int dev_info (TYPE_3__*,char*,char*,long long,int,char*) ;
 int kfree (struct dataflash*) ;
 struct dataflash* kzalloc (int,int ) ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 int mtd_set_of_node (struct mtd_info*,int ) ;
 int mutex_init (int *) ;
 char* otp_setup (struct mtd_info*,char) ;
 int spi_set_drvdata (struct spi_device*,struct dataflash*) ;
 int sprintf (scalar_t__,char*,int,int,char*) ;

__attribute__((used)) static int add_dataflash_otp(struct spi_device *spi, char *name, int nr_pages,
        int pagesize, int pageoffset, char revision)
{
 struct dataflash *priv;
 struct mtd_info *device;
 struct flash_platform_data *pdata = dev_get_platdata(&spi->dev);
 char *otp_tag = "";
 int err = 0;

 priv = kzalloc(sizeof *priv, GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 mutex_init(&priv->lock);
 priv->spi = spi;
 priv->page_size = pagesize;
 priv->page_offset = pageoffset;


 sprintf(priv->name, "spi%d.%d-%s",
   spi->master->bus_num, spi->chip_select,
   name);

 device = &priv->mtd;
 device->name = (pdata && pdata->name) ? pdata->name : priv->name;
 device->size = nr_pages * pagesize;
 device->erasesize = pagesize;
 device->writesize = pagesize;
 device->type = MTD_DATAFLASH;
 device->flags = MTD_WRITEABLE;
 device->_erase = dataflash_erase;
 device->_read = dataflash_read;
 device->_write = dataflash_write;
 device->priv = priv;

 device->dev.parent = &spi->dev;
 mtd_set_of_node(device, spi->dev.of_node);

 if (revision >= 'c')
  otp_tag = otp_setup(device, revision);

 dev_info(&spi->dev, "%s (%lld KBytes) pagesize %d bytes%s\n",
   name, (long long)((device->size + 1023) >> 10),
   pagesize, otp_tag);
 spi_set_drvdata(spi, priv);

 err = mtd_device_register(device,
   pdata ? pdata->parts : ((void*)0),
   pdata ? pdata->nr_parts : 0);

 if (!err)
  return 0;

 kfree(priv);
 return err;
}
