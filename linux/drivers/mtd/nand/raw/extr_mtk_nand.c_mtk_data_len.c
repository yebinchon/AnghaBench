
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtk_nfc_nand_chip {int spare_per_sector; } ;


 struct mtk_nfc_nand_chip* to_mtk_nand (struct nand_chip*) ;

__attribute__((used)) static inline int mtk_data_len(struct nand_chip *chip)
{
 struct mtk_nfc_nand_chip *mtk_nand = to_mtk_nand(chip);

 return chip->ecc.size + mtk_nand->spare_per_sector;
}
