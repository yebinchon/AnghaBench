
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_nor_hwcaps {int mask; } ;
struct resource {int dummy; } ;
struct mtd_partition {int dummy; } ;
struct intel_spi_boardinfo {int writeable; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {TYPE_2__ mtd; int erase; int write; int read; int write_reg; int read_reg; struct intel_spi* priv; struct device* dev; } ;
struct intel_spi {TYPE_1__ nor; int writeable; struct device* dev; struct intel_spi_boardinfo const* info; int base; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct intel_spi* ERR_CAST (int ) ;
 struct intel_spi* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MTD_WRITEABLE ;
 int SNOR_HWCAPS_PP ;
 int SNOR_HWCAPS_READ ;
 int SNOR_HWCAPS_READ_FAST ;
 int dev_info (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct intel_spi* devm_kzalloc (struct device*,int,int ) ;
 int intel_spi_erase ;
 int intel_spi_fill_partition (struct intel_spi*,struct mtd_partition*) ;
 int intel_spi_init (struct intel_spi*) ;
 int intel_spi_read ;
 int intel_spi_read_reg ;
 int intel_spi_write ;
 int intel_spi_write_reg ;
 int mtd_device_register (TYPE_2__*,struct mtd_partition*,int) ;
 int spi_nor_scan (TYPE_1__*,int *,struct spi_nor_hwcaps const*) ;
 int writeable ;

struct intel_spi *intel_spi_probe(struct device *dev,
 struct resource *mem, const struct intel_spi_boardinfo *info)
{
 const struct spi_nor_hwcaps hwcaps = {
  .mask = SNOR_HWCAPS_READ |
   SNOR_HWCAPS_READ_FAST |
   SNOR_HWCAPS_PP,
 };
 struct mtd_partition part;
 struct intel_spi *ispi;
 int ret;

 if (!info || !mem)
  return ERR_PTR(-EINVAL);

 ispi = devm_kzalloc(dev, sizeof(*ispi), GFP_KERNEL);
 if (!ispi)
  return ERR_PTR(-ENOMEM);

 ispi->base = devm_ioremap_resource(dev, mem);
 if (IS_ERR(ispi->base))
  return ERR_CAST(ispi->base);

 ispi->dev = dev;
 ispi->info = info;
 ispi->writeable = info->writeable;

 ret = intel_spi_init(ispi);
 if (ret)
  return ERR_PTR(ret);

 ispi->nor.dev = ispi->dev;
 ispi->nor.priv = ispi;
 ispi->nor.read_reg = intel_spi_read_reg;
 ispi->nor.write_reg = intel_spi_write_reg;
 ispi->nor.read = intel_spi_read;
 ispi->nor.write = intel_spi_write;
 ispi->nor.erase = intel_spi_erase;

 ret = spi_nor_scan(&ispi->nor, ((void*)0), &hwcaps);
 if (ret) {
  dev_info(dev, "failed to locate the chip\n");
  return ERR_PTR(ret);
 }

 intel_spi_fill_partition(ispi, &part);


 if (!ispi->writeable || !writeable)
  ispi->nor.mtd.flags &= ~MTD_WRITEABLE;

 ret = mtd_device_register(&ispi->nor.mtd, &part, 1);
 if (ret)
  return ERR_PTR(ret);

 return ispi;
}
