
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct b53_device {int dummy; } ;


 int b53_switch_remove (struct b53_device*) ;
 struct b53_device* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int b53_spi_remove(struct spi_device *spi)
{
 struct b53_device *dev = spi_get_drvdata(spi);

 if (dev)
  b53_switch_remove(dev);

 return 0;
}
