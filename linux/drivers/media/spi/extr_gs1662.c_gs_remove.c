
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct spi_device {int dummy; } ;


 struct v4l2_subdev* spi_get_drvdata (struct spi_device*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int gs_remove(struct spi_device *spi)
{
 struct v4l2_subdev *sd = spi_get_drvdata(spi);

 v4l2_device_unregister_subdev(sd);

 return 0;
}
