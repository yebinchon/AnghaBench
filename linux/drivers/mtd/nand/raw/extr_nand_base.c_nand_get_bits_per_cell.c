
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int NAND_CI_CELLTYPE_MSK ;
 int NAND_CI_CELLTYPE_SHIFT ;

__attribute__((used)) static int nand_get_bits_per_cell(u8 cellinfo)
{
 int bits;

 bits = cellinfo & NAND_CI_CELLTYPE_MSK;
 bits >>= NAND_CI_CELLTYPE_SHIFT;
 return bits + 1;
}
