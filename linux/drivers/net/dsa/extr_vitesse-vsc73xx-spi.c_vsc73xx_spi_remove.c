
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsc73xx_spi {int vsc; } ;
struct spi_device {int dummy; } ;


 struct vsc73xx_spi* spi_get_drvdata (struct spi_device*) ;
 int vsc73xx_remove (int *) ;

__attribute__((used)) static int vsc73xx_spi_remove(struct spi_device *spi)
{
 struct vsc73xx_spi *vsc_spi = spi_get_drvdata(spi);

 return vsc73xx_remove(&vsc_spi->vsc);
}
