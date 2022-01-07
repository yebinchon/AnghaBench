
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_chip {int controller; } ;
struct atmel_smc_nand_controller {TYPE_2__* ebi_csa; int ebi_csa_regmap; } ;
struct atmel_nand_controller {int dummy; } ;
struct atmel_nand {int numcs; TYPE_1__* cs; struct nand_chip base; } ;
struct TYPE_4__ {scalar_t__ nfd0_on_d16; int offs; } ;
struct TYPE_3__ {int id; } ;


 scalar_t__ BIT (int ) ;
 int atmel_nand_init (struct atmel_nand_controller*,struct atmel_nand*) ;
 int regmap_update_bits (int ,int ,scalar_t__,scalar_t__) ;
 struct atmel_smc_nand_controller* to_smc_nand_controller (int ) ;

__attribute__((used)) static void atmel_smc_nand_init(struct atmel_nand_controller *nc,
    struct atmel_nand *nand)
{
 struct nand_chip *chip = &nand->base;
 struct atmel_smc_nand_controller *smc_nc;
 int i;

 atmel_nand_init(nc, nand);

 smc_nc = to_smc_nand_controller(chip->controller);
 if (!smc_nc->ebi_csa_regmap)
  return;


 for (i = 0; i < nand->numcs; i++)
  regmap_update_bits(smc_nc->ebi_csa_regmap,
       smc_nc->ebi_csa->offs,
       BIT(nand->cs[i].id), BIT(nand->cs[i].id));

 if (smc_nc->ebi_csa->nfd0_on_d16)
  regmap_update_bits(smc_nc->ebi_csa_regmap,
       smc_nc->ebi_csa->offs,
       smc_nc->ebi_csa->nfd0_on_d16,
       smc_nc->ebi_csa->nfd0_on_d16);
}
