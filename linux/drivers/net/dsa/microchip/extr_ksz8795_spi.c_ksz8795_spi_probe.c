
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct regmap_config {int val_bits; int * lock_arg; } ;
struct ksz_device {scalar_t__ pdata; int * regmap; int regmap_mutex; } ;


 int ARRAY_SIZE (struct regmap_config*) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,int ,int) ;
 int devm_regmap_init_spi (struct spi_device*,struct regmap_config*) ;
 struct regmap_config* ksz8795_regmap_config ;
 int ksz8795_switch_register (struct ksz_device*) ;
 struct ksz_device* ksz_switch_alloc (TYPE_1__*,struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct ksz_device*) ;

__attribute__((used)) static int ksz8795_spi_probe(struct spi_device *spi)
{
 struct regmap_config rc;
 struct ksz_device *dev;
 int i, ret;

 dev = ksz_switch_alloc(&spi->dev, spi);
 if (!dev)
  return -ENOMEM;

 for (i = 0; i < ARRAY_SIZE(ksz8795_regmap_config); i++) {
  rc = ksz8795_regmap_config[i];
  rc.lock_arg = &dev->regmap_mutex;
  dev->regmap[i] = devm_regmap_init_spi(spi, &rc);
  if (IS_ERR(dev->regmap[i])) {
   ret = PTR_ERR(dev->regmap[i]);
   dev_err(&spi->dev,
    "Failed to initialize regmap%i: %d\n",
    ksz8795_regmap_config[i].val_bits, ret);
   return ret;
  }
 }

 if (spi->dev.platform_data)
  dev->pdata = spi->dev.platform_data;

 ret = ksz8795_switch_register(dev);


 if (ret)
  return ret;

 spi_set_drvdata(spi, dev);

 return 0;
}
