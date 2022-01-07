
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_ops {int dummy; } ;
struct v4l2_subdev {int name; TYPE_2__* dev; int owner; int flags; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct spi_device {TYPE_2__ dev; } ;
struct TYPE_3__ {char* name; int owner; } ;


 int V4L2_SUBDEV_FL_IS_SPI ;
 char* dev_name (TYPE_2__*) ;
 int snprintf (int ,int,char*,char*,char*) ;
 int spi_set_drvdata (struct spi_device*,struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct spi_device*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,struct v4l2_subdev_ops const*) ;

void v4l2_spi_subdev_init(struct v4l2_subdev *sd, struct spi_device *spi,
     const struct v4l2_subdev_ops *ops)
{
 v4l2_subdev_init(sd, ops);
 sd->flags |= V4L2_SUBDEV_FL_IS_SPI;

 sd->owner = spi->dev.driver->owner;
 sd->dev = &spi->dev;

 v4l2_set_subdevdata(sd, spi);
 spi_set_drvdata(spi, sd);

 snprintf(sd->name, sizeof(sd->name), "%s %s",
   spi->dev.driver->name, dev_name(&spi->dev));
}
