
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int gpmi_ecc_write_page_raw (struct nand_chip*,int *,int,int) ;

__attribute__((used)) static int gpmi_ecc_write_oob_raw(struct nand_chip *chip, int page)
{
 return gpmi_ecc_write_page_raw(chip, ((void*)0), 1, page);
}
