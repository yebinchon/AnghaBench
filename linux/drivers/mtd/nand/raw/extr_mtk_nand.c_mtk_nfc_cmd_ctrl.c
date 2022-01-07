
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtk_nfc {int dummy; } ;


 int CNFG_OP_CUST ;
 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NFI_CNFG ;
 int mtk_nfc_hw_reset (struct mtk_nfc*) ;
 int mtk_nfc_send_address (struct mtk_nfc*,int) ;
 int mtk_nfc_send_command (struct mtk_nfc*,int) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 int nfi_writew (struct mtk_nfc*,int ,int ) ;

__attribute__((used)) static void mtk_nfc_cmd_ctrl(struct nand_chip *chip, int dat,
        unsigned int ctrl)
{
 struct mtk_nfc *nfc = nand_get_controller_data(chip);

 if (ctrl & NAND_ALE) {
  mtk_nfc_send_address(nfc, dat);
 } else if (ctrl & NAND_CLE) {
  mtk_nfc_hw_reset(nfc);

  nfi_writew(nfc, CNFG_OP_CUST, NFI_CNFG);
  mtk_nfc_send_command(nfc, dat);
 }
}
