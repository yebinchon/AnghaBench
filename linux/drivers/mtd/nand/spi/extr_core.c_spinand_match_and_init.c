
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int update_cache; int write_cache; int read_cache; } ;
struct spinand_info {scalar_t__ devid; TYPE_1__ op_variants; int select_target; int flags; int eccinfo; int eccreq; int memorg; } ;
struct TYPE_4__ {struct spi_mem_op const* update_cache; struct spi_mem_op const* write_cache; struct spi_mem_op const* read_cache; } ;
struct spinand_device {TYPE_2__ op_templates; int select_target; int flags; int eccinfo; } ;
struct spi_mem_op {int dummy; } ;
struct nand_device {int eccreq; int memorg; } ;


 int ENOTSUPP ;
 struct spi_mem_op* spinand_select_op_variant (struct spinand_device*,int ) ;
 struct nand_device* spinand_to_nand (struct spinand_device*) ;

int spinand_match_and_init(struct spinand_device *spinand,
      const struct spinand_info *table,
      unsigned int table_size, u16 devid)
{
 struct nand_device *nand = spinand_to_nand(spinand);
 unsigned int i;

 for (i = 0; i < table_size; i++) {
  const struct spinand_info *info = &table[i];
  const struct spi_mem_op *op;

  if (devid != info->devid)
   continue;

  nand->memorg = table[i].memorg;
  nand->eccreq = table[i].eccreq;
  spinand->eccinfo = table[i].eccinfo;
  spinand->flags = table[i].flags;
  spinand->select_target = table[i].select_target;

  op = spinand_select_op_variant(spinand,
            info->op_variants.read_cache);
  if (!op)
   return -ENOTSUPP;

  spinand->op_templates.read_cache = op;

  op = spinand_select_op_variant(spinand,
            info->op_variants.write_cache);
  if (!op)
   return -ENOTSUPP;

  spinand->op_templates.write_cache = op;

  op = spinand_select_op_variant(spinand,
            info->op_variants.update_cache);
  spinand->op_templates.update_cache = op;

  return 0;
 }

 return -ENOTSUPP;
}
