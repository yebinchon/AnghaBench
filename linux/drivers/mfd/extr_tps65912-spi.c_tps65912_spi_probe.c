
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65912 {int regmap; int * dev; int irq; } ;
struct spi_device {int irq; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 struct tps65912* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_spi (struct spi_device*,int *) ;
 int spi_set_drvdata (struct spi_device*,struct tps65912*) ;
 int tps65912_device_init (struct tps65912*) ;
 int tps65912_regmap_config ;

__attribute__((used)) static int tps65912_spi_probe(struct spi_device *spi)
{
 struct tps65912 *tps;

 tps = devm_kzalloc(&spi->dev, sizeof(*tps), GFP_KERNEL);
 if (!tps)
  return -ENOMEM;

 spi_set_drvdata(spi, tps);
 tps->dev = &spi->dev;
 tps->irq = spi->irq;

 tps->regmap = devm_regmap_init_spi(spi, &tps65912_regmap_config);
 if (IS_ERR(tps->regmap)) {
  dev_err(tps->dev, "Failed to initialize register map\n");
  return PTR_ERR(tps->regmap);
 }

 return tps65912_device_init(tps);
}
