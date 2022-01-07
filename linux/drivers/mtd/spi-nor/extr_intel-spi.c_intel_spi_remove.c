
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mtd; } ;
struct intel_spi {TYPE_1__ nor; } ;


 int mtd_device_unregister (int *) ;

int intel_spi_remove(struct intel_spi *ispi)
{
 return mtd_device_unregister(&ispi->nor.mtd);
}
