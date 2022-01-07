
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct spi_device_id {unsigned long driver_data; } ;
struct TYPE_4__ {scalar_t__ of_node; } ;
struct spi_device {int irq; TYPE_1__ dev; } ;
struct regmap_config {int dummy; } ;
struct arizona {unsigned long type; int irq; TYPE_1__* dev; int regmap; } ;


 int CONFIG_MFD_CS47L24 ;
 int CONFIG_MFD_WM5102 ;
 int CONFIG_MFD_WM5110 ;

 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;




 int arizona_dev_init (struct arizona*) ;
 unsigned long arizona_of_get_type (TYPE_1__*) ;
 struct regmap_config cs47l24_spi_regmap ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct arizona* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_spi (struct spi_device*,struct regmap_config const*) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 struct regmap_config wm5102_spi_regmap ;
 struct regmap_config wm5110_spi_regmap ;

__attribute__((used)) static int arizona_spi_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 struct arizona *arizona;
 const struct regmap_config *regmap_config = ((void*)0);
 unsigned long type;
 int ret;

 if (spi->dev.of_node)
  type = arizona_of_get_type(&spi->dev);
 else
  type = id->driver_data;

 switch (type) {
 case 130:
  if (IS_ENABLED(CONFIG_MFD_WM5102))
   regmap_config = &wm5102_spi_regmap;
  break;
 case 129:
 case 128:
  if (IS_ENABLED(CONFIG_MFD_WM5110))
   regmap_config = &wm5110_spi_regmap;
  break;
 case 131:
 case 132:
  if (IS_ENABLED(CONFIG_MFD_CS47L24))
   regmap_config = &cs47l24_spi_regmap;
  break;
 default:
  dev_err(&spi->dev, "Unknown device type %ld\n", type);
  return -EINVAL;
 }

 if (!regmap_config) {
  dev_err(&spi->dev,
   "No kernel support for device type %ld\n", type);
  return -EINVAL;
 }

 arizona = devm_kzalloc(&spi->dev, sizeof(*arizona), GFP_KERNEL);
 if (arizona == ((void*)0))
  return -ENOMEM;

 arizona->regmap = devm_regmap_init_spi(spi, regmap_config);
 if (IS_ERR(arizona->regmap)) {
  ret = PTR_ERR(arizona->regmap);
  dev_err(&spi->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 arizona->type = type;
 arizona->dev = &spi->dev;
 arizona->irq = spi->irq;

 return arizona_dev_init(arizona);
}
