
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int capability; int rangelow; int rangehigh; int type; int name; int index; } ;
struct v4l2_subdev {int dummy; } ;
struct spi_device {int dev; } ;
struct msi001_dev {struct spi_device* spi; } ;


 int V4L2_TUNER_CAP_1HZ ;
 int V4L2_TUNER_CAP_FREQ_BANDS ;
 int V4L2_TUNER_RF ;
 int dev_dbg (int *,char*,int ) ;
 struct msi001_dev* sd_to_msi001_dev (struct v4l2_subdev*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int msi001_g_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *v)
{
 struct msi001_dev *dev = sd_to_msi001_dev(sd);
 struct spi_device *spi = dev->spi;

 dev_dbg(&spi->dev, "index=%d\n", v->index);

 strscpy(v->name, "Mirics MSi001", sizeof(v->name));
 v->type = V4L2_TUNER_RF;
 v->capability = V4L2_TUNER_CAP_1HZ | V4L2_TUNER_CAP_FREQ_BANDS;
 v->rangelow = 49000000;
 v->rangehigh = 960000000;

 return 0;
}
