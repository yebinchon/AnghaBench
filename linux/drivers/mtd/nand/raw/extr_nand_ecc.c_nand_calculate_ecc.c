
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int options; int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;


 int NAND_ECC_SOFT_HAMMING_SM_ORDER ;
 int __nand_calculate_ecc (unsigned char const*,int ,unsigned char*,int) ;

int nand_calculate_ecc(struct nand_chip *chip, const unsigned char *buf,
         unsigned char *code)
{
 bool sm_order = chip->ecc.options & NAND_ECC_SOFT_HAMMING_SM_ORDER;

 __nand_calculate_ecc(buf, chip->ecc.size, code, sm_order);

 return 0;
}
