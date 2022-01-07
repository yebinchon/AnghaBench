
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int partid; int partname; } ;
struct mtd_info {TYPE_1__ dbg; } ;
struct spi_nor {int dev; struct mtd_info mtd; } ;
struct flash_info {int id; int id_len; int name; } ;


 int GFP_KERNEL ;
 int devm_kasprintf (int ,int ,char*,int ,int ) ;

__attribute__((used)) static void spi_nor_debugfs_init(struct spi_nor *nor,
     const struct flash_info *info)
{
 struct mtd_info *mtd = &nor->mtd;

 mtd->dbg.partname = info->name;
 mtd->dbg.partid = devm_kasprintf(nor->dev, GFP_KERNEL, "spi-nor:%*phN",
      info->id_len, info->id);
}
