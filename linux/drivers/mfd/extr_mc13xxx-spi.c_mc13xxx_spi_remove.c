
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int mc13xxx_common_exit (int *) ;

__attribute__((used)) static int mc13xxx_spi_remove(struct spi_device *spi)
{
 return mc13xxx_common_exit(&spi->dev);
}
