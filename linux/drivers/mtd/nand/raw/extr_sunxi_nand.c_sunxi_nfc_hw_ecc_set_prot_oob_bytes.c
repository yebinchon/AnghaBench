
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_data ;
typedef int u8 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct nand_chip {int options; int controller; } ;


 int NAND_NEED_SCRAMBLING ;
 scalar_t__ NFC_REG_USER_DATA (int) ;
 int memcpy (int *,int const*,int) ;
 int sunxi_nfc_buf_to_user_data (int const*) ;
 int sunxi_nfc_randomize_bbm (struct nand_chip*,int,int *) ;
 struct sunxi_nfc* to_sunxi_nfc (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sunxi_nfc_hw_ecc_set_prot_oob_bytes(struct nand_chip *nand,
      const u8 *oob, int step,
      bool bbm, int page)
{
 struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);
 u8 user_data[4];


 if (bbm && (nand->options & NAND_NEED_SCRAMBLING)) {
  memcpy(user_data, oob, sizeof(user_data));
  sunxi_nfc_randomize_bbm(nand, page, user_data);
  oob = user_data;
 }

 writel(sunxi_nfc_buf_to_user_data(oob),
        nfc->regs + NFC_REG_USER_DATA(step));
}
