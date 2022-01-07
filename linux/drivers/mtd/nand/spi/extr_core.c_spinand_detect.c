
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; int len; } ;
struct spinand_device {TYPE_5__* spimem; TYPE_3__* manufacturer; int select_target; TYPE_1__ id; } ;
struct TYPE_7__ {int ntargets; } ;
struct nand_device {TYPE_2__ memorg; } ;
struct device {int dummy; } ;
struct TYPE_10__ {TYPE_4__* spi; } ;
struct TYPE_9__ {struct device dev; } ;
struct TYPE_8__ {int name; } ;


 int EINVAL ;
 int SPINAND_MAX_ID_LEN ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int,...) ;
 int nanddev_eraseblock_size (struct nand_device*) ;
 int nanddev_page_size (struct nand_device*) ;
 int nanddev_per_page_oobsize (struct nand_device*) ;
 int nanddev_size (struct nand_device*) ;
 int spinand_manufacturer_detect (struct spinand_device*) ;
 int spinand_read_id_op (struct spinand_device*,int ) ;
 int spinand_reset_op (struct spinand_device*) ;
 struct nand_device* spinand_to_nand (struct spinand_device*) ;

__attribute__((used)) static int spinand_detect(struct spinand_device *spinand)
{
 struct device *dev = &spinand->spimem->spi->dev;
 struct nand_device *nand = spinand_to_nand(spinand);
 int ret;

 ret = spinand_reset_op(spinand);
 if (ret)
  return ret;

 ret = spinand_read_id_op(spinand, spinand->id.data);
 if (ret)
  return ret;

 spinand->id.len = SPINAND_MAX_ID_LEN;

 ret = spinand_manufacturer_detect(spinand);
 if (ret) {
  dev_err(dev, "unknown raw ID %*phN\n", SPINAND_MAX_ID_LEN,
   spinand->id.data);
  return ret;
 }

 if (nand->memorg.ntargets > 1 && !spinand->select_target) {
  dev_err(dev,
   "SPI NANDs with more than one die must implement ->select_target()\n");
  return -EINVAL;
 }

 dev_info(&spinand->spimem->spi->dev,
   "%s SPI NAND was found.\n", spinand->manufacturer->name);
 dev_info(&spinand->spimem->spi->dev,
   "%llu MiB, block size: %zu KiB, page size: %zu, OOB size: %u\n",
   nanddev_size(nand) >> 20, nanddev_eraseblock_size(nand) >> 10,
   nanddev_page_size(nand), nanddev_per_page_oobsize(nand));

 return 0;
}
