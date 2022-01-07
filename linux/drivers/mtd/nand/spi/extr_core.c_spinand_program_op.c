
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spinand_device {int spimem; } ;
struct spi_mem_op {int dummy; } ;
struct nand_page_io_req {int pos; } ;
struct nand_device {int dummy; } ;


 struct spi_mem_op SPINAND_PROG_EXEC_OP (unsigned int) ;
 unsigned int nanddev_pos_to_row (struct nand_device*,int *) ;
 int spi_mem_exec_op (int ,struct spi_mem_op*) ;
 struct nand_device* spinand_to_nand (struct spinand_device*) ;

__attribute__((used)) static int spinand_program_op(struct spinand_device *spinand,
         const struct nand_page_io_req *req)
{
 struct nand_device *nand = spinand_to_nand(spinand);
 unsigned int row = nanddev_pos_to_row(nand, &req->pos);
 struct spi_mem_op op = SPINAND_PROG_EXEC_OP(row);

 return spi_mem_exec_op(spinand->spimem, &op);
}
