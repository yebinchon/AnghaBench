
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int nand_change_read_column_op (struct nand_chip*,unsigned int,void*,unsigned int,int) ;
 int nand_change_write_column_op (struct nand_chip*,unsigned int,void*,unsigned int,int) ;

__attribute__((used)) static int denali_change_column(struct nand_chip *chip, unsigned int offset,
    void *buf, unsigned int len, bool write)
{
 if (write)
  return nand_change_write_column_op(chip, offset, buf, len,
         0);
 else
  return nand_change_read_column_op(chip, offset, buf, len,
        0);
}
