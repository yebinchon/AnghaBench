
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_nor_hwcaps {int mask; } ;
struct TYPE_2__ {char* name; } ;
struct spi_nor {TYPE_1__ mtd; int write_reg; int write; int read_reg; int read; struct mtk_nor* priv; int dev; } ;
struct mtk_nor {int dev; struct spi_nor nor; scalar_t__ base; } ;
struct device_node {int dummy; } ;


 int MTK_NOR_ENABLE_SF_CMD ;
 scalar_t__ MTK_NOR_WRPROT_REG ;
 int SNOR_HWCAPS_PP ;
 int SNOR_HWCAPS_READ ;
 int SNOR_HWCAPS_READ_1_1_2 ;
 int SNOR_HWCAPS_READ_FAST ;
 int mtd_device_register (TYPE_1__*,int *,int ) ;
 int mtk_nor_read ;
 int mtk_nor_read_reg ;
 int mtk_nor_write ;
 int mtk_nor_write_reg ;
 int spi_nor_scan (struct spi_nor*,int *,struct spi_nor_hwcaps const*) ;
 int spi_nor_set_flash_node (struct spi_nor*,struct device_node*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mtk_nor_init(struct mtk_nor *mtk_nor,
   struct device_node *flash_node)
{
 const struct spi_nor_hwcaps hwcaps = {
  .mask = SNOR_HWCAPS_READ |
   SNOR_HWCAPS_READ_FAST |
   SNOR_HWCAPS_READ_1_1_2 |
   SNOR_HWCAPS_PP,
 };
 int ret;
 struct spi_nor *nor;


 writel(MTK_NOR_ENABLE_SF_CMD, mtk_nor->base + MTK_NOR_WRPROT_REG);

 nor = &mtk_nor->nor;
 nor->dev = mtk_nor->dev;
 nor->priv = mtk_nor;
 spi_nor_set_flash_node(nor, flash_node);


 nor->read = mtk_nor_read;
 nor->read_reg = mtk_nor_read_reg;
 nor->write = mtk_nor_write;
 nor->write_reg = mtk_nor_write_reg;
 nor->mtd.name = "mtk_nor";

 ret = spi_nor_scan(nor, ((void*)0), &hwcaps);
 if (ret)
  return ret;

 return mtd_device_register(&nor->mtd, ((void*)0), 0);
}
