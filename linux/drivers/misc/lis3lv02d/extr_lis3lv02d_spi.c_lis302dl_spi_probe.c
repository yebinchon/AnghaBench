
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int of_node; int platform_data; } ;
struct spi_device {int bits_per_word; TYPE_2__ dev; int irq; int mode; } ;
struct TYPE_6__ {int of_node; int pdata; int ac; int irq; int write; int read; int init; struct spi_device* bus_priv; } ;


 int SPI_MODE_0 ;
 int lis302dl_spi_dt_ids ;
 TYPE_1__ lis3_dev ;
 int lis3_spi_init ;
 int lis3_spi_read ;
 int lis3_spi_write ;
 int lis3lv02d_axis_normal ;
 int lis3lv02d_init_device (TYPE_1__*) ;
 int lis3lv02d_init_dt (TYPE_1__*) ;
 scalar_t__ of_match_device (int ,TYPE_2__*) ;
 int spi_set_drvdata (struct spi_device*,TYPE_1__*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int lis302dl_spi_probe(struct spi_device *spi)
{
 int ret;

 spi->bits_per_word = 8;
 spi->mode = SPI_MODE_0;
 ret = spi_setup(spi);
 if (ret < 0)
  return ret;

 lis3_dev.bus_priv = spi;
 lis3_dev.init = lis3_spi_init;
 lis3_dev.read = lis3_spi_read;
 lis3_dev.write = lis3_spi_write;
 lis3_dev.irq = spi->irq;
 lis3_dev.ac = lis3lv02d_axis_normal;
 lis3_dev.pdata = spi->dev.platform_data;
 spi_set_drvdata(spi, &lis3_dev);

 return lis3lv02d_init_device(&lis3_dev);
}
