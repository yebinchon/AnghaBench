
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nand_chip {int dummy; } ;
struct mtk_nfc {TYPE_1__* caps; } ;
struct TYPE_2__ {int max_sector; } ;


 int CNFG_BYTE_RW ;
 int CON_BWR ;
 int CON_SEC_SHIFT ;
 int NFI_CNFG ;
 int NFI_CON ;
 int NFI_DATAW ;
 int NFI_FSM_CUSTDATA ;
 int NFI_FSM_MASK ;
 int NFI_STA ;
 int NFI_STRDATA ;
 int STAR_EN ;
 int mtk_nfc_wait_ioready (struct mtk_nfc*) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 int nfi_readl (struct mtk_nfc*,int ) ;
 int nfi_readw (struct mtk_nfc*,int ) ;
 int nfi_writeb (struct mtk_nfc*,int ,int ) ;
 int nfi_writel (struct mtk_nfc*,int,int ) ;
 int nfi_writew (struct mtk_nfc*,int,int ) ;

__attribute__((used)) static void mtk_nfc_write_byte(struct nand_chip *chip, u8 byte)
{
 struct mtk_nfc *nfc = nand_get_controller_data(chip);
 u32 reg;

 reg = nfi_readl(nfc, NFI_STA) & NFI_FSM_MASK;

 if (reg != NFI_FSM_CUSTDATA) {
  reg = nfi_readw(nfc, NFI_CNFG) | CNFG_BYTE_RW;
  nfi_writew(nfc, reg, NFI_CNFG);

  reg = nfc->caps->max_sector << CON_SEC_SHIFT | CON_BWR;
  nfi_writel(nfc, reg, NFI_CON);

  nfi_writew(nfc, STAR_EN, NFI_STRDATA);
 }

 mtk_nfc_wait_ioready(nfc);
 nfi_writeb(nfc, byte, NFI_DATAW);
}
