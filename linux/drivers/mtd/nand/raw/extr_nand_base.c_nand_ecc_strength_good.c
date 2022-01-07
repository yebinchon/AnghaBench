
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_ecc_ctrl {int size; int strength; } ;
struct TYPE_3__ {int step_size; int strength; } ;
struct TYPE_4__ {TYPE_1__ eccreq; } ;
struct nand_chip {TYPE_2__ base; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int writesize; } ;


 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static bool nand_ecc_strength_good(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;
 int corr, ds_corr;

 if (ecc->size == 0 || chip->base.eccreq.step_size == 0)

  return 1;





 corr = (mtd->writesize * ecc->strength) / ecc->size;
 ds_corr = (mtd->writesize * chip->base.eccreq.strength) /
    chip->base.eccreq.step_size;

 return corr >= ds_corr && ecc->strength >= chip->base.eccreq.strength;
}
