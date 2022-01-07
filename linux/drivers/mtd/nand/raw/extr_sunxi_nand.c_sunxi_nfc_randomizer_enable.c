
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_nfc {scalar_t__ regs; } ;
struct nand_chip {int options; int controller; } ;


 int NAND_NEED_SCRAMBLING ;
 int NFC_RANDOM_EN ;
 scalar_t__ NFC_REG_ECC_CTL ;
 int readl (scalar_t__) ;
 struct sunxi_nfc* to_sunxi_nfc (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sunxi_nfc_randomizer_enable(struct nand_chip *nand)
{
 struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);

 if (!(nand->options & NAND_NEED_SCRAMBLING))
  return;

 writel(readl(nfc->regs + NFC_REG_ECC_CTL) | NFC_RANDOM_EN,
        nfc->regs + NFC_REG_ECC_CTL);
}
