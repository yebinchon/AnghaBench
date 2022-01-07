
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int options; } ;


 int NAND_BROKEN_XD ;
 int NAND_STATUS_WP ;
 int nand_status_op (struct nand_chip*,int*) ;

__attribute__((used)) static int nand_check_wp(struct nand_chip *chip)
{
 u8 status;
 int ret;


 if (chip->options & NAND_BROKEN_XD)
  return 0;


 ret = nand_status_op(chip, &status);
 if (ret)
  return ret;

 return status & NAND_STATUS_WP ? 0 : 1;
}
