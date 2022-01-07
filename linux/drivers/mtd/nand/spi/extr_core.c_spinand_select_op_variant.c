
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spinand_op_variants {unsigned int nops; struct spi_mem_op const* ops; } ;
struct spinand_device {int spimem; } ;
struct TYPE_2__ {unsigned int nbytes; } ;
typedef struct spi_mem_op {TYPE_1__ data; } const spi_mem_op ;
struct nand_device {int dummy; } ;


 unsigned int nanddev_page_size (struct nand_device*) ;
 unsigned int nanddev_per_page_oobsize (struct nand_device*) ;
 int spi_mem_adjust_op_size (int ,struct spi_mem_op const*) ;
 int spi_mem_supports_op (int ,struct spi_mem_op const*) ;
 struct nand_device* spinand_to_nand (struct spinand_device*) ;

__attribute__((used)) static const struct spi_mem_op *
spinand_select_op_variant(struct spinand_device *spinand,
     const struct spinand_op_variants *variants)
{
 struct nand_device *nand = spinand_to_nand(spinand);
 unsigned int i;

 for (i = 0; i < variants->nops; i++) {
  struct spi_mem_op op = variants->ops[i];
  unsigned int nbytes;
  int ret;

  nbytes = nanddev_per_page_oobsize(nand) +
    nanddev_page_size(nand);

  while (nbytes) {
   op.data.nbytes = nbytes;
   ret = spi_mem_adjust_op_size(spinand->spimem, &op);
   if (ret)
    break;

   if (!spi_mem_supports_op(spinand->spimem, &op))
    break;

   nbytes -= op.data.nbytes;
  }

  if (!nbytes)
   return &variants->ops[i];
 }

 return ((void*)0);
}
