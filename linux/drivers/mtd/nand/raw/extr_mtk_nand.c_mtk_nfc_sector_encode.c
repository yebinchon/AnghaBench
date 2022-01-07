
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct TYPE_5__ {int reg_size; } ;
struct mtk_nfc_nand_chip {TYPE_2__ fdm; } ;
struct TYPE_6__ {int op; int mode; } ;
struct mtk_nfc {TYPE_3__ ecc_cfg; int ecc; } ;


 int ECC_DMA_MODE ;
 int ECC_ENCODE ;
 int mtk_ecc_encode (int ,TYPE_3__*,int *,int) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 struct mtk_nfc_nand_chip* to_mtk_nand (struct nand_chip*) ;

__attribute__((used)) static int mtk_nfc_sector_encode(struct nand_chip *chip, u8 *data)
{
 struct mtk_nfc *nfc = nand_get_controller_data(chip);
 struct mtk_nfc_nand_chip *mtk_nand = to_mtk_nand(chip);
 int size = chip->ecc.size + mtk_nand->fdm.reg_size;

 nfc->ecc_cfg.mode = ECC_DMA_MODE;
 nfc->ecc_cfg.op = ECC_ENCODE;

 return mtk_ecc_encode(nfc->ecc, &nfc->ecc_cfg, data, size);
}
