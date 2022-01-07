
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct nand_chip {int options; int controller; } ;


 int NAND_NEED_SCRAMBLING ;
 scalar_t__ NFC_REG_USER_DATA (int) ;
 int readl (scalar_t__) ;
 int sunxi_nfc_randomize_bbm (struct nand_chip*,int,int *) ;
 int sunxi_nfc_user_data_to_buf (int ,int *) ;
 struct sunxi_nfc* to_sunxi_nfc (int ) ;

__attribute__((used)) static void sunxi_nfc_hw_ecc_get_prot_oob_bytes(struct nand_chip *nand, u8 *oob,
      int step, bool bbm, int page)
{
 struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);

 sunxi_nfc_user_data_to_buf(readl(nfc->regs + NFC_REG_USER_DATA(step)),
       oob);


 if (bbm && (nand->options & NAND_NEED_SCRAMBLING))
  sunxi_nfc_randomize_bbm(nand, page, oob);
}
