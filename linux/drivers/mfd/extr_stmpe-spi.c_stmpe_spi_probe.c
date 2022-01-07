
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device_id {int driver_data; } ;
struct spi_device {int max_speed_hz; int dev; int irq; } ;
struct TYPE_3__ {int * dev; struct spi_device* client; int irq; } ;


 int EINVAL ;
 int dev_dbg (int *,char*,int) ;
 TYPE_1__ spi_ci ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int stmpe_probe (TYPE_1__*,int ) ;

__attribute__((used)) static int
stmpe_spi_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);


 if (spi->max_speed_hz > 1000000) {
  dev_dbg(&spi->dev, "f(sample) %d KHz?\n",
    (spi->max_speed_hz/1000));
  return -EINVAL;
 }

 spi_ci.irq = spi->irq;
 spi_ci.client = spi;
 spi_ci.dev = &spi->dev;

 return stmpe_probe(&spi_ci, id->driver_data);
}
