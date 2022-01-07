
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * read_cache; int * update_cache; } ;
struct spinand_device {TYPE_4__* dirmaps; TYPE_5__* spimem; TYPE_2__ op_templates; } ;
struct spi_mem_dirmap_info {unsigned int offset; int op_tmpl; scalar_t__ length; } ;
struct spi_mem_dirmap_desc {int dummy; } ;
struct TYPE_6__ {int pagesize; } ;
struct nand_device {TYPE_1__ memorg; } ;
struct TYPE_10__ {TYPE_3__* spi; } ;
struct TYPE_9__ {struct spi_mem_dirmap_desc* rdesc; struct spi_mem_dirmap_desc* wdesc; } ;
struct TYPE_8__ {int dev; } ;


 scalar_t__ IS_ERR (struct spi_mem_dirmap_desc*) ;
 int PTR_ERR (struct spi_mem_dirmap_desc*) ;
 struct spi_mem_dirmap_desc* devm_spi_mem_dirmap_create (int *,TYPE_5__*,struct spi_mem_dirmap_info*) ;
 unsigned int fls (int ) ;
 scalar_t__ nanddev_page_size (struct nand_device*) ;
 scalar_t__ nanddev_per_page_oobsize (struct nand_device*) ;
 struct nand_device* spinand_to_nand (struct spinand_device*) ;

__attribute__((used)) static int spinand_create_dirmap(struct spinand_device *spinand,
     unsigned int plane)
{
 struct nand_device *nand = spinand_to_nand(spinand);
 struct spi_mem_dirmap_info info = {
  .length = nanddev_page_size(nand) +
     nanddev_per_page_oobsize(nand),
 };
 struct spi_mem_dirmap_desc *desc;


 info.offset = plane << fls(nand->memorg.pagesize);

 info.op_tmpl = *spinand->op_templates.update_cache;
 desc = devm_spi_mem_dirmap_create(&spinand->spimem->spi->dev,
       spinand->spimem, &info);
 if (IS_ERR(desc))
  return PTR_ERR(desc);

 spinand->dirmaps[plane].wdesc = desc;

 info.op_tmpl = *spinand->op_templates.read_cache;
 desc = devm_spi_mem_dirmap_create(&spinand->spimem->spi->dev,
       spinand->spimem, &info);
 if (IS_ERR(desc))
  return PTR_ERR(desc);

 spinand->dirmaps[plane].rdesc = desc;

 return 0;
}
