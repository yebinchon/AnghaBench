
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct spi_device {int dev; } ;
struct msi001_dev {int hdl; int sd; } ;


 int dev_dbg (int *,char*) ;
 int kfree (struct msi001_dev*) ;
 struct msi001_dev* sd_to_msi001_dev (struct v4l2_subdev*) ;
 struct v4l2_subdev* spi_get_drvdata (struct spi_device*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (int *) ;

__attribute__((used)) static int msi001_remove(struct spi_device *spi)
{
 struct v4l2_subdev *sd = spi_get_drvdata(spi);
 struct msi001_dev *dev = sd_to_msi001_dev(sd);

 dev_dbg(&spi->dev, "\n");





 v4l2_device_unregister_subdev(&dev->sd);
 v4l2_ctrl_handler_free(&dev->hdl);
 kfree(dev);
 return 0;
}
