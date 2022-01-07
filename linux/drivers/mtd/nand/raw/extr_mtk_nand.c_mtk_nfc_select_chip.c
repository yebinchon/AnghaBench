
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtk_nfc_nand_chip {int * sels; } ;
struct mtk_nfc {int dummy; } ;


 int NFI_CSEL ;
 int mtk_nfc_hw_runtime_config (int ) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 int nand_to_mtd (struct nand_chip*) ;
 int nfi_writel (struct mtk_nfc*,int ,int ) ;
 struct mtk_nfc_nand_chip* to_mtk_nand (struct nand_chip*) ;

__attribute__((used)) static void mtk_nfc_select_chip(struct nand_chip *nand, int chip)
{
 struct mtk_nfc *nfc = nand_get_controller_data(nand);
 struct mtk_nfc_nand_chip *mtk_nand = to_mtk_nand(nand);

 if (chip < 0)
  return;

 mtk_nfc_hw_runtime_config(nand_to_mtd(nand));

 nfi_writel(nfc, mtk_nand->sels[chip], NFI_CSEL);
}
