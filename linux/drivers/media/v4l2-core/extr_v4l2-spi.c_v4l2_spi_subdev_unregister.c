
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int fwnode; int of_node; } ;
struct spi_device {TYPE_1__ dev; } ;


 int spi_unregister_device (struct spi_device*) ;
 struct spi_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

void v4l2_spi_subdev_unregister(struct v4l2_subdev *sd)
{
 struct spi_device *spi = v4l2_get_subdevdata(sd);

 if (spi && !spi->dev.of_node && !spi->dev.fwnode)
  spi_unregister_device(spi);
}
