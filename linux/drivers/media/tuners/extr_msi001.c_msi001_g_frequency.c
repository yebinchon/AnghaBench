
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int frequency; int tuner; } ;
struct spi_device {int dev; } ;
struct msi001_dev {int f_tuner; struct spi_device* spi; } ;


 int dev_dbg (int *,char*,int ) ;
 struct msi001_dev* sd_to_msi001_dev (struct v4l2_subdev*) ;

__attribute__((used)) static int msi001_g_frequency(struct v4l2_subdev *sd, struct v4l2_frequency *f)
{
 struct msi001_dev *dev = sd_to_msi001_dev(sd);
 struct spi_device *spi = dev->spi;

 dev_dbg(&spi->dev, "tuner=%d\n", f->tuner);
 f->frequency = dev->f_tuner;
 return 0;
}
