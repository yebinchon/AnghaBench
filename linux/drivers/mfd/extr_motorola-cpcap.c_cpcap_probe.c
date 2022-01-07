
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; int mode; int dev; } ;
struct of_device_id {int dummy; } ;
struct cpcap_ddata {struct spi_device* spi; int regmap; int * regmap_conf; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_CS_HIGH ;
 int SPI_MODE_0 ;
 int cpcap_check_revision (struct cpcap_ddata*) ;
 int cpcap_init_irq (struct cpcap_ddata*) ;
 int cpcap_mfd_devices ;
 int cpcap_of_match ;
 int cpcap_regmap_config ;
 int dev_err (int *,char*,int) ;
 struct cpcap_ddata* devm_kzalloc (int *,int,int ) ;
 int devm_mfd_add_devices (int *,int ,int ,int ,int *,int ,int *) ;
 int devm_regmap_init_spi (struct spi_device*,int *) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int of_match_ptr (int ) ;
 int spi_set_drvdata (struct spi_device*,struct cpcap_ddata*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int cpcap_probe(struct spi_device *spi)
{
 const struct of_device_id *match;
 struct cpcap_ddata *cpcap;
 int ret;

 match = of_match_device(of_match_ptr(cpcap_of_match), &spi->dev);
 if (!match)
  return -ENODEV;

 cpcap = devm_kzalloc(&spi->dev, sizeof(*cpcap), GFP_KERNEL);
 if (!cpcap)
  return -ENOMEM;

 cpcap->spi = spi;
 spi_set_drvdata(spi, cpcap);

 spi->bits_per_word = 16;
 spi->mode = SPI_MODE_0 | SPI_CS_HIGH;

 ret = spi_setup(spi);
 if (ret)
  return ret;

 cpcap->regmap_conf = &cpcap_regmap_config;
 cpcap->regmap = devm_regmap_init_spi(spi, &cpcap_regmap_config);
 if (IS_ERR(cpcap->regmap)) {
  ret = PTR_ERR(cpcap->regmap);
  dev_err(&cpcap->spi->dev, "Failed to initialize regmap: %d\n",
   ret);

  return ret;
 }

 ret = cpcap_check_revision(cpcap);
 if (ret) {
  dev_err(&cpcap->spi->dev, "Failed to detect CPCAP: %i\n", ret);
  return ret;
 }

 ret = cpcap_init_irq(cpcap);
 if (ret)
  return ret;

 return devm_mfd_add_devices(&spi->dev, 0, cpcap_mfd_devices,
        ARRAY_SIZE(cpcap_mfd_devices), ((void*)0), 0, ((void*)0));
}
