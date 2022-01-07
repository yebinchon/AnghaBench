
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int index; } ;
struct v4l2_subdev {int dummy; } ;
struct spi_device {int dev; } ;
struct msi001_dev {struct spi_device* spi; } ;


 int dev_dbg (int *,char*,int ) ;
 struct msi001_dev* sd_to_msi001_dev (struct v4l2_subdev*) ;

__attribute__((used)) static int msi001_s_tuner(struct v4l2_subdev *sd, const struct v4l2_tuner *v)
{
 struct msi001_dev *dev = sd_to_msi001_dev(sd);
 struct spi_device *spi = dev->spi;

 dev_dbg(&spi->dev, "index=%d\n", v->index);
 return 0;
}
