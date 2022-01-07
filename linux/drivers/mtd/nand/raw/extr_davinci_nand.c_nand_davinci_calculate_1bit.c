
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct nand_chip {int dummy; } ;


 unsigned int nand_davinci_readecc_1bit (int ) ;
 int nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int nand_davinci_calculate_1bit(struct nand_chip *chip,
           const u_char *dat, u_char *ecc_code)
{
 unsigned int ecc_val = nand_davinci_readecc_1bit(nand_to_mtd(chip));
 unsigned int ecc24 = (ecc_val & 0x0fff) | ((ecc_val & 0x0fff0000) >> 4);


 ecc24 = ~ecc24;
 ecc_code[0] = (u_char)(ecc24);
 ecc_code[1] = (u_char)(ecc24 >> 8);
 ecc_code[2] = (u_char)(ecc24 >> 16);

 return 0;
}
