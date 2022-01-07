
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int w5100_remove (int *) ;

__attribute__((used)) static int w5100_spi_remove(struct spi_device *spi)
{
 return w5100_remove(&spi->dev);
}
