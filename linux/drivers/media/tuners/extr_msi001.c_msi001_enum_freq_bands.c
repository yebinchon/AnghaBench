
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency_band {size_t index; int rangehigh; int rangelow; int capability; int type; int tuner; } ;
struct spi_device {int dev; } ;
struct msi001_dev {struct spi_device* spi; } ;
struct TYPE_3__ {int rangehigh; int rangelow; int capability; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* bands ;
 int dev_dbg (int *,char*,int ,int ,size_t) ;
 struct msi001_dev* sd_to_msi001_dev (struct v4l2_subdev*) ;

__attribute__((used)) static int msi001_enum_freq_bands(struct v4l2_subdev *sd,
      struct v4l2_frequency_band *band)
{
 struct msi001_dev *dev = sd_to_msi001_dev(sd);
 struct spi_device *spi = dev->spi;

 dev_dbg(&spi->dev, "tuner=%d type=%d index=%d\n",
  band->tuner, band->type, band->index);

 if (band->index >= ARRAY_SIZE(bands))
  return -EINVAL;

 band->capability = bands[band->index].capability;
 band->rangelow = bands[band->index].rangelow;
 band->rangehigh = bands[band->index].rangehigh;

 return 0;
}
