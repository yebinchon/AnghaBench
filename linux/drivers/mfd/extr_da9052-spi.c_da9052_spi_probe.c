
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {int driver_data; } ;
struct spi_device {int bits_per_word; int dev; int irq; int mode; } ;
struct regmap_config {int read_flag_mask; int reg_bits; int pad_bits; int val_bits; int use_single_read; int use_single_write; } ;
struct da9052 {int regmap; int chip_irq; int * dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_MODE_0 ;
 int da9052_device_init (struct da9052*,int ) ;
 struct regmap_config da9052_regmap_config ;
 int dev_err (int *,char*,int) ;
 struct da9052* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_spi (struct spi_device*,struct regmap_config*) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct da9052*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int da9052_spi_probe(struct spi_device *spi)
{
 struct regmap_config config;
 int ret;
 const struct spi_device_id *id = spi_get_device_id(spi);
 struct da9052 *da9052;

 da9052 = devm_kzalloc(&spi->dev, sizeof(struct da9052), GFP_KERNEL);
 if (!da9052)
  return -ENOMEM;

 spi->mode = SPI_MODE_0;
 spi->bits_per_word = 8;
 spi_setup(spi);

 da9052->dev = &spi->dev;
 da9052->chip_irq = spi->irq;

 spi_set_drvdata(spi, da9052);

 config = da9052_regmap_config;
 config.read_flag_mask = 1;
 config.reg_bits = 7;
 config.pad_bits = 1;
 config.val_bits = 8;
 config.use_single_read = 1;
 config.use_single_write = 1;

 da9052->regmap = devm_regmap_init_spi(spi, &config);
 if (IS_ERR(da9052->regmap)) {
  ret = PTR_ERR(da9052->regmap);
  dev_err(&spi->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 return da9052_device_init(da9052, id->driver_data);
}
