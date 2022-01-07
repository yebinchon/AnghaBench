
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct arizona {int dummy; } ;


 int arizona_dev_exit (struct arizona*) ;
 struct arizona* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int arizona_spi_remove(struct spi_device *spi)
{
 struct arizona *arizona = spi_get_drvdata(spi);

 arizona_dev_exit(arizona);

 return 0;
}
