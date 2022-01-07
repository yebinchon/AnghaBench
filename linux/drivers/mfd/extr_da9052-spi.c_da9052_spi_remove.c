
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct da9052 {int dummy; } ;


 int da9052_device_exit (struct da9052*) ;
 struct da9052* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int da9052_spi_remove(struct spi_device *spi)
{
 struct da9052 *da9052 = spi_get_drvdata(spi);

 da9052_device_exit(da9052);
 return 0;
}
