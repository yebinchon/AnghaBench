
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int options; int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;


 int NAND_ECC_SOFT_HAMMING_SM_ORDER ;
 int __nand_correct_data (unsigned char*,unsigned char*,unsigned char*,int ,int) ;

int nand_correct_data(struct nand_chip *chip, unsigned char *buf,
        unsigned char *read_ecc, unsigned char *calc_ecc)
{
 bool sm_order = chip->ecc.options & NAND_ECC_SOFT_HAMMING_SM_ORDER;

 return __nand_correct_data(buf, read_ecc, calc_ecc, chip->ecc.size,
       sm_order);
}
