
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtk_nfc {int dummy; } ;


 int NFI_STA ;
 int STA_BUSY ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 int nfi_readl (struct mtk_nfc*,int ) ;

__attribute__((used)) static int mtk_nfc_dev_ready(struct nand_chip *nand)
{
 struct mtk_nfc *nfc = nand_get_controller_data(nand);

 if (nfi_readl(nfc, NFI_STA) & STA_BUSY)
  return 0;

 return 1;
}
