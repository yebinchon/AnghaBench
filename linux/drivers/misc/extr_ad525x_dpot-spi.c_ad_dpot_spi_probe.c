
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct ad_dpot_bus_data {int * bops; struct spi_device* client; } ;
struct TYPE_2__ {int name; int driver_data; } ;


 int ad_dpot_probe (int *,struct ad_dpot_bus_data*,int ,int ) ;
 int bops ;
 TYPE_1__* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int ad_dpot_spi_probe(struct spi_device *spi)
{
 struct ad_dpot_bus_data bdata = {
  .client = spi,
  .bops = &bops,
 };

 return ad_dpot_probe(&spi->dev, &bdata,
        spi_get_device_id(spi)->driver_data,
        spi_get_device_id(spi)->name);
}
