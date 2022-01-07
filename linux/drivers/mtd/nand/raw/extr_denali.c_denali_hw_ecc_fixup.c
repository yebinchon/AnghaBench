
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ steps; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_ecc_stats {unsigned int corrected; } ;
struct denali_controller {int active_bank; scalar_t__ reg; } ;
struct TYPE_4__ {struct mtd_ecc_stats ecc_stats; } ;


 scalar_t__ ECC_COR_INFO (int) ;
 int ECC_COR_INFO__MAX_ERRORS ;
 int ECC_COR_INFO__SHIFT (int) ;
 int ECC_COR_INFO__UNCOR_ERR ;
 unsigned int FIELD_GET (int ,int) ;
 unsigned long GENMASK (scalar_t__,int ) ;
 int ioread32 (scalar_t__) ;
 TYPE_2__* nand_to_mtd (struct nand_chip*) ;
 struct denali_controller* to_denali_controller (struct nand_chip*) ;

__attribute__((used)) static int denali_hw_ecc_fixup(struct nand_chip *chip,
          unsigned long *uncor_ecc_flags)
{
 struct denali_controller *denali = to_denali_controller(chip);
 struct mtd_ecc_stats *ecc_stats = &nand_to_mtd(chip)->ecc_stats;
 int bank = denali->active_bank;
 u32 ecc_cor;
 unsigned int max_bitflips;

 ecc_cor = ioread32(denali->reg + ECC_COR_INFO(bank));
 ecc_cor >>= ECC_COR_INFO__SHIFT(bank);

 if (ecc_cor & ECC_COR_INFO__UNCOR_ERR) {





  *uncor_ecc_flags = GENMASK(chip->ecc.steps - 1, 0);
  return 0;
 }

 max_bitflips = FIELD_GET(ECC_COR_INFO__MAX_ERRORS, ecc_cor);







 ecc_stats->corrected += max_bitflips;

 return max_bitflips;
}
