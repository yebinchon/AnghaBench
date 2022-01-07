
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; int write_page_raw; int read_page_raw; int write_page; int read_page; } ;
struct nand_chip {TYPE_1__ ecc; } ;


 scalar_t__ NAND_ECC_HW ;
 int atmel_hsmc_nand_pmecc_read_page ;
 int atmel_hsmc_nand_pmecc_read_page_raw ;
 int atmel_hsmc_nand_pmecc_write_page ;
 int atmel_hsmc_nand_pmecc_write_page_raw ;
 int atmel_nand_ecc_init (struct nand_chip*) ;

__attribute__((used)) static int atmel_hsmc_nand_ecc_init(struct nand_chip *chip)
{
 int ret;

 ret = atmel_nand_ecc_init(chip);
 if (ret)
  return ret;

 if (chip->ecc.mode != NAND_ECC_HW)
  return 0;


 chip->ecc.read_page = atmel_hsmc_nand_pmecc_read_page;
 chip->ecc.write_page = atmel_hsmc_nand_pmecc_write_page;
 chip->ecc.read_page_raw = atmel_hsmc_nand_pmecc_read_page_raw;
 chip->ecc.write_page_raw = atmel_hsmc_nand_pmecc_write_page_raw;

 return 0;
}
