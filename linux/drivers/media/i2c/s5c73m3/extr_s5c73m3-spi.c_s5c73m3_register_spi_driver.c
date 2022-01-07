
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_match_table; int name; } ;
struct spi_driver {TYPE_1__ driver; int probe; int remove; } ;
struct s5c73m3 {struct spi_driver spidrv; } ;


 int S5C73M3_SPI_DRV_NAME ;
 int s5c73m3_spi_ids ;
 int s5c73m3_spi_probe ;
 int s5c73m3_spi_remove ;
 int spi_register_driver (struct spi_driver*) ;

int s5c73m3_register_spi_driver(struct s5c73m3 *state)
{
 struct spi_driver *spidrv = &state->spidrv;

 spidrv->remove = s5c73m3_spi_remove;
 spidrv->probe = s5c73m3_spi_probe;
 spidrv->driver.name = S5C73M3_SPI_DRV_NAME;
 spidrv->driver.of_match_table = s5c73m3_spi_ids;

 return spi_register_driver(spidrv);
}
