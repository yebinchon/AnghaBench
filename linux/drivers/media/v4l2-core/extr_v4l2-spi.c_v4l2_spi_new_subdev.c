
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_device {int dummy; } ;
struct spi_master {int dummy; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct spi_device {TYPE_2__ dev; } ;
struct spi_board_info {scalar_t__* modalias; } ;
struct TYPE_3__ {int owner; } ;


 int module_put (int ) ;
 int request_module (scalar_t__*) ;
 struct v4l2_subdev* spi_get_drvdata (struct spi_device*) ;
 struct spi_device* spi_new_device (struct spi_master*,struct spi_board_info*) ;
 int spi_unregister_device (struct spi_device*) ;
 int try_module_get (int ) ;
 scalar_t__ v4l2_device_register_subdev (struct v4l2_device*,struct v4l2_subdev*) ;

struct v4l2_subdev *v4l2_spi_new_subdev(struct v4l2_device *v4l2_dev,
     struct spi_master *master,
     struct spi_board_info *info)
{
 struct v4l2_subdev *sd = ((void*)0);
 struct spi_device *spi = ((void*)0);

 if (!v4l2_dev)
  return ((void*)0);
 if (info->modalias[0])
  request_module(info->modalias);

 spi = spi_new_device(master, info);

 if (!spi || !spi->dev.driver)
  goto error;

 if (!try_module_get(spi->dev.driver->owner))
  goto error;

 sd = spi_get_drvdata(spi);





 if (v4l2_device_register_subdev(v4l2_dev, sd))
  sd = ((void*)0);


 module_put(spi->dev.driver->owner);

error:




 if (!sd)
  spi_unregister_device(spi);

 return sd;
}
