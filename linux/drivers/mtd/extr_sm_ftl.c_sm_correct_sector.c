
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sm_oob {int ecc2; int ecc1; } ;


 int CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC ;
 int EIO ;
 int IS_ENABLED (int ) ;
 int SM_SMALL_PAGE ;
 int __nand_calculate_ecc (int *,int ,int *,int ) ;
 scalar_t__ __nand_correct_data (int *,int *,int ,int ,int ) ;

__attribute__((used)) static int sm_correct_sector(uint8_t *buffer, struct sm_oob *oob)
{
 uint8_t ecc[3];

 __nand_calculate_ecc(buffer, SM_SMALL_PAGE, ecc,
        IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
 if (__nand_correct_data(buffer, ecc, oob->ecc1, SM_SMALL_PAGE,
    IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC)) < 0)
  return -EIO;

 buffer += SM_SMALL_PAGE;

 __nand_calculate_ecc(buffer, SM_SMALL_PAGE, ecc,
        IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
 if (__nand_correct_data(buffer, ecc, oob->ecc2, SM_SMALL_PAGE,
    IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC)) < 0)
  return -EIO;
 return 0;
}
