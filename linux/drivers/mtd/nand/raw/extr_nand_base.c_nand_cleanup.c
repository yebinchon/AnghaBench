
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; scalar_t__ algo; TYPE_2__* calc_buf; TYPE_2__* code_buf; scalar_t__ priv; } ;
struct nand_chip {TYPE_2__* badblock_pattern; TYPE_1__ ecc; TYPE_2__* data_buf; TYPE_2__* bbt; } ;
struct nand_bch_control {int dummy; } ;
struct TYPE_4__ {int options; } ;


 int NAND_BBT_DYNAMICSTRUCT ;
 scalar_t__ NAND_ECC_BCH ;
 scalar_t__ NAND_ECC_SOFT ;
 int kfree (TYPE_2__*) ;
 int nand_bch_free (struct nand_bch_control*) ;
 int nand_detach (struct nand_chip*) ;
 int nand_manufacturer_cleanup (struct nand_chip*) ;
 int nand_scan_ident_cleanup (struct nand_chip*) ;

void nand_cleanup(struct nand_chip *chip)
{
 if (chip->ecc.mode == NAND_ECC_SOFT &&
     chip->ecc.algo == NAND_ECC_BCH)
  nand_bch_free((struct nand_bch_control *)chip->ecc.priv);


 kfree(chip->bbt);
 kfree(chip->data_buf);
 kfree(chip->ecc.code_buf);
 kfree(chip->ecc.calc_buf);


 if (chip->badblock_pattern && chip->badblock_pattern->options
   & NAND_BBT_DYNAMICSTRUCT)
  kfree(chip->badblock_pattern);


 nand_manufacturer_cleanup(chip);


 nand_detach(chip);


 nand_scan_ident_cleanup(chip);
}
