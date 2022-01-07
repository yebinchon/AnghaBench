
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct nand_chip {int options; int controller; } ;


 int NAND_NEED_SCRAMBLING ;
 int NFC_RANDOM_SEED (int ) ;
 int NFC_RANDOM_SEED_MSK ;
 scalar_t__ NFC_REG_ECC_CTL ;
 int readl (scalar_t__) ;
 int sunxi_nfc_randomizer_state (struct nand_chip*,int,int) ;
 struct sunxi_nfc* to_sunxi_nfc (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sunxi_nfc_randomizer_config(struct nand_chip *nand, int page,
     bool ecc)
{
 struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);
 u32 ecc_ctl = readl(nfc->regs + NFC_REG_ECC_CTL);
 u16 state;

 if (!(nand->options & NAND_NEED_SCRAMBLING))
  return;

 ecc_ctl = readl(nfc->regs + NFC_REG_ECC_CTL);
 state = sunxi_nfc_randomizer_state(nand, page, ecc);
 ecc_ctl = readl(nfc->regs + NFC_REG_ECC_CTL) & ~NFC_RANDOM_SEED_MSK;
 writel(ecc_ctl | NFC_RANDOM_SEED(state), nfc->regs + NFC_REG_ECC_CTL);
}
