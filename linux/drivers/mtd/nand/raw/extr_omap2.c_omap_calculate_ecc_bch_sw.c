
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int dummy; } ;


 int _omap_calculate_ecc_bch (int ,int const*,int *,int ) ;
 int nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int omap_calculate_ecc_bch_sw(struct nand_chip *chip,
         const u_char *dat, u_char *ecc_calc)
{
 return _omap_calculate_ecc_bch(nand_to_mtd(chip), dat, ecc_calc, 0);
}
