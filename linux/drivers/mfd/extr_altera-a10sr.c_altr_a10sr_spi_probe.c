
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; int dev; int mode; } ;
struct altr_a10sr {int * dev; int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR (int ) ;
 int SPI_MODE_3 ;
 int altr_a10sr_regmap_config ;
 int altr_a10sr_subdev_info ;
 int dev_err (int *,char*,int) ;
 struct altr_a10sr* devm_kzalloc (int *,int,int ) ;
 int devm_mfd_add_devices (int *,int ,int ,int ,int *,int ,int *) ;
 int devm_regmap_init_spi (struct spi_device*,int *) ;
 int spi_set_drvdata (struct spi_device*,struct altr_a10sr*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int altr_a10sr_spi_probe(struct spi_device *spi)
{
 int ret;
 struct altr_a10sr *a10sr;

 a10sr = devm_kzalloc(&spi->dev, sizeof(*a10sr),
        GFP_KERNEL);
 if (!a10sr)
  return -ENOMEM;

 spi->mode = SPI_MODE_3;
 spi->bits_per_word = 8;
 spi_setup(spi);

 a10sr->dev = &spi->dev;

 spi_set_drvdata(spi, a10sr);

 a10sr->regmap = devm_regmap_init_spi(spi, &altr_a10sr_regmap_config);
 if (IS_ERR(a10sr->regmap)) {
  ret = PTR_ERR(a10sr->regmap);
  dev_err(&spi->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 ret = devm_mfd_add_devices(a10sr->dev, PLATFORM_DEVID_AUTO,
       altr_a10sr_subdev_info,
       ARRAY_SIZE(altr_a10sr_subdev_info),
       ((void*)0), 0, ((void*)0));
 if (ret)
  dev_err(a10sr->dev, "Failed to register sub-devices: %d\n",
   ret);

 return ret;
}
