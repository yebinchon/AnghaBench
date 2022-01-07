
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_nfc {int dev; scalar_t__ regs; } ;


 int NFC_DEFAULT_TIMEOUT_MS ;
 scalar_t__ NFC_REG_CTL ;
 scalar_t__ NFC_REG_ECC_CTL ;
 int NFC_RESET ;
 int dev_err (int ,char*) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sunxi_nfc_rst(struct sunxi_nfc *nfc)
{
 u32 ctl;
 int ret;

 writel(0, nfc->regs + NFC_REG_ECC_CTL);
 writel(NFC_RESET, nfc->regs + NFC_REG_CTL);

 ret = readl_poll_timeout(nfc->regs + NFC_REG_CTL, ctl,
     !(ctl & NFC_RESET), 1,
     NFC_DEFAULT_TIMEOUT_MS * 1000);
 if (ret)
  dev_err(nfc->dev, "wait for NAND controller reset timedout\n");

 return ret;
}
