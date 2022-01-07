
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int * oob_poi; } ;
struct TYPE_3__ {int reg_size; } ;
struct TYPE_4__ {int sec; } ;
struct mtk_nfc_nand_chip {TYPE_1__ fdm; TYPE_2__ bad_mark; } ;


 struct mtk_nfc_nand_chip* to_mtk_nand (struct nand_chip*) ;

__attribute__((used)) static inline u8 *oob_ptr(struct nand_chip *chip, int i)
{
 struct mtk_nfc_nand_chip *mtk_nand = to_mtk_nand(chip);
 u8 *poi;





 if (i < mtk_nand->bad_mark.sec)
  poi = chip->oob_poi + (i + 1) * mtk_nand->fdm.reg_size;
 else if (i == mtk_nand->bad_mark.sec)
  poi = chip->oob_poi;
 else
  poi = chip->oob_poi + i * mtk_nand->fdm.reg_size;

 return poi;
}
