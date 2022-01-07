
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct madera {int dummy; } ;


 int madera_dev_exit (struct madera*) ;
 struct madera* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int madera_spi_remove(struct spi_device *spi)
{
 struct madera *madera = spi_get_drvdata(spi);

 madera_dev_exit(madera);

 return 0;
}
