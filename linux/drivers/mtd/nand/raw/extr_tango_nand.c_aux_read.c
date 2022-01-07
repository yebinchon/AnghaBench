
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;


 int nand_change_read_column_op (struct nand_chip*,int,int *,int ,int) ;
 int tango_read_buf (struct nand_chip*,int *,int) ;

__attribute__((used)) static void aux_read(struct nand_chip *chip, u8 **buf, int len, int *pos)
{
 *pos += len;

 if (!*buf) {

  nand_change_read_column_op(chip, *pos, ((void*)0), 0, 0);
 } else {
  tango_read_buf(chip, *buf, len);
  *buf += len;
 }
}
