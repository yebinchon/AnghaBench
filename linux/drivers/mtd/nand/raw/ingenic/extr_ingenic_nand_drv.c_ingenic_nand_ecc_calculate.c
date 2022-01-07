
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int dummy; } ;
struct ingenic_nfc {int ecc; } ;
struct TYPE_3__ {int strength; int bytes; int size; } ;
struct TYPE_4__ {TYPE_1__ ecc; int controller; } ;
struct ingenic_nand {TYPE_2__ chip; scalar_t__ reading; } ;
struct ingenic_ecc_params {int strength; int bytes; int size; } ;


 int ingenic_ecc_calculate (int ,struct ingenic_ecc_params*,int const*,int *) ;
 int nand_to_mtd (struct nand_chip*) ;
 struct ingenic_nand* to_ingenic_nand (int ) ;
 struct ingenic_nfc* to_ingenic_nfc (int ) ;

__attribute__((used)) static int ingenic_nand_ecc_calculate(struct nand_chip *chip, const u8 *dat,
          u8 *ecc_code)
{
 struct ingenic_nand *nand = to_ingenic_nand(nand_to_mtd(chip));
 struct ingenic_nfc *nfc = to_ingenic_nfc(nand->chip.controller);
 struct ingenic_ecc_params params;





 if (nand->reading)
  return 0;

 params.size = nand->chip.ecc.size;
 params.bytes = nand->chip.ecc.bytes;
 params.strength = nand->chip.ecc.strength;

 return ingenic_ecc_calculate(nfc->ecc, &params, dat, ecc_code);
}
