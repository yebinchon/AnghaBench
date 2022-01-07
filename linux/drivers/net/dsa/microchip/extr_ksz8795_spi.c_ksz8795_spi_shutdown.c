
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dummy; } ;
struct ksz_device {TYPE_1__* dev_ops; } ;
struct TYPE_2__ {int (* shutdown ) (struct ksz_device*) ;} ;


 struct ksz_device* spi_get_drvdata (struct spi_device*) ;
 int stub1 (struct ksz_device*) ;

__attribute__((used)) static void ksz8795_spi_shutdown(struct spi_device *spi)
{
 struct ksz_device *dev = spi_get_drvdata(spi);

 if (dev && dev->dev_ops->shutdown)
  dev->dev_ops->shutdown(dev);
}
