
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor_hwcaps {int mask; } ;
struct mtd_info {int name; } ;
struct spi_nor {struct mtd_info mtd; int * erase; int write; int read; int write_reg; int read_reg; int unprepare; int prepare; struct hifmc_priv* priv; struct device* dev; } ;
struct hifmc_priv {struct hifmc_host* host; int clkrate; int chipselect; } ;
struct hifmc_host {size_t num_chip; struct spi_nor** nor; struct device* dev; } ;
struct device_node {int name; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNOR_HWCAPS_PP ;
 int SNOR_HWCAPS_READ ;
 int SNOR_HWCAPS_READ_1_1_2 ;
 int SNOR_HWCAPS_READ_1_1_4 ;
 int SNOR_HWCAPS_READ_FAST ;
 int dev_err (struct device*,char*,struct device_node*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int hisi_spi_nor_prep ;
 int hisi_spi_nor_read ;
 int hisi_spi_nor_read_reg ;
 int hisi_spi_nor_unprep ;
 int hisi_spi_nor_write ;
 int hisi_spi_nor_write_reg ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int spi_nor_scan (struct spi_nor*,int *,struct spi_nor_hwcaps const*) ;
 int spi_nor_set_flash_node (struct spi_nor*,struct device_node*) ;

__attribute__((used)) static int hisi_spi_nor_register(struct device_node *np,
    struct hifmc_host *host)
{
 const struct spi_nor_hwcaps hwcaps = {
  .mask = SNOR_HWCAPS_READ |
   SNOR_HWCAPS_READ_FAST |
   SNOR_HWCAPS_READ_1_1_2 |
   SNOR_HWCAPS_READ_1_1_4 |
   SNOR_HWCAPS_PP,
 };
 struct device *dev = host->dev;
 struct spi_nor *nor;
 struct hifmc_priv *priv;
 struct mtd_info *mtd;
 int ret;

 nor = devm_kzalloc(dev, sizeof(*nor), GFP_KERNEL);
 if (!nor)
  return -ENOMEM;

 nor->dev = dev;
 spi_nor_set_flash_node(nor, np);

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 ret = of_property_read_u32(np, "reg", &priv->chipselect);
 if (ret) {
  dev_err(dev, "There's no reg property for %pOF\n",
   np);
  return ret;
 }

 ret = of_property_read_u32(np, "spi-max-frequency",
   &priv->clkrate);
 if (ret) {
  dev_err(dev, "There's no spi-max-frequency property for %pOF\n",
   np);
  return ret;
 }
 priv->host = host;
 nor->priv = priv;

 nor->prepare = hisi_spi_nor_prep;
 nor->unprepare = hisi_spi_nor_unprep;
 nor->read_reg = hisi_spi_nor_read_reg;
 nor->write_reg = hisi_spi_nor_write_reg;
 nor->read = hisi_spi_nor_read;
 nor->write = hisi_spi_nor_write;
 nor->erase = ((void*)0);
 ret = spi_nor_scan(nor, ((void*)0), &hwcaps);
 if (ret)
  return ret;

 mtd = &nor->mtd;
 mtd->name = np->name;
 ret = mtd_device_register(mtd, ((void*)0), 0);
 if (ret)
  return ret;

 host->nor[host->num_chip] = nor;
 host->num_chip++;
 return 0;
}
