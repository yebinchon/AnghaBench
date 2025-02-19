
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct spi_device_id {scalar_t__ driver_data; } ;
struct TYPE_8__ {scalar_t__ of_node; } ;
struct spi_device {int mode; int max_speed_hz; TYPE_1__ dev; int irq; } ;
struct of_device_id {void* data; } ;
struct mc13xxx {void* variant; int regmap; int irq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_CS_HIGH ;
 int SPI_MODE_0 ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_set_drvdata (TYPE_1__*,struct mc13xxx*) ;
 struct mc13xxx* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init (TYPE_1__*,int *,TYPE_1__*,int *) ;
 int mc13xxx_common_init (TYPE_1__*) ;
 int mc13xxx_dt_ids ;
 int mc13xxx_regmap_spi_config ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int regmap_mc13xxx_bus ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int mc13xxx_spi_probe(struct spi_device *spi)
{
 struct mc13xxx *mc13xxx;
 int ret;

 mc13xxx = devm_kzalloc(&spi->dev, sizeof(*mc13xxx), GFP_KERNEL);
 if (!mc13xxx)
  return -ENOMEM;

 dev_set_drvdata(&spi->dev, mc13xxx);

 spi->mode = SPI_MODE_0 | SPI_CS_HIGH;

 mc13xxx->irq = spi->irq;

 spi->max_speed_hz = spi->max_speed_hz ? : 26000000;
 ret = spi_setup(spi);
 if (ret)
  return ret;

 mc13xxx->regmap = devm_regmap_init(&spi->dev, &regmap_mc13xxx_bus,
        &spi->dev,
        &mc13xxx_regmap_spi_config);
 if (IS_ERR(mc13xxx->regmap)) {
  ret = PTR_ERR(mc13xxx->regmap);
  dev_err(&spi->dev, "Failed to initialize regmap: %d\n", ret);
  return ret;
 }

 if (spi->dev.of_node) {
  const struct of_device_id *of_id =
   of_match_device(mc13xxx_dt_ids, &spi->dev);

  mc13xxx->variant = of_id->data;
 } else {
  const struct spi_device_id *id_entry = spi_get_device_id(spi);

  mc13xxx->variant = (void *)id_entry->driver_data;
 }

 return mc13xxx_common_init(&spi->dev);
}
