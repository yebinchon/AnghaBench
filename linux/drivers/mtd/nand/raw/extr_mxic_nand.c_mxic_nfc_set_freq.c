
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxic_nand_ctlr {int dummy; } ;


 unsigned long MXIC_NFC_MAX_CLK_HZ ;
 int mxic_nfc_clk_disable (struct mxic_nand_ctlr*) ;
 int mxic_nfc_clk_enable (struct mxic_nand_ctlr*) ;
 int mxic_nfc_clk_setup (struct mxic_nand_ctlr*,unsigned long) ;

__attribute__((used)) static int mxic_nfc_set_freq(struct mxic_nand_ctlr *nfc, unsigned long freq)
{
 int ret;

 if (freq > MXIC_NFC_MAX_CLK_HZ)
  freq = MXIC_NFC_MAX_CLK_HZ;

 mxic_nfc_clk_disable(nfc);
 ret = mxic_nfc_clk_setup(nfc, freq);
 if (ret)
  return ret;

 ret = mxic_nfc_clk_enable(nfc);
 if (ret)
  return ret;

 return 0;
}
