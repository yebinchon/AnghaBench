
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
typedef int loff_t ;



__attribute__((used)) static int cafe_nand_block_bad(struct nand_chip *chip, loff_t ofs)
{
 return 0;
}
