
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxic_nand_ctlr {int send_dly_clk; int send_clk; } ;


 int clk_set_phase (int ,int) ;
 int clk_set_rate (int ,unsigned long) ;
 int mxic_nfc_set_input_delay (struct mxic_nand_ctlr*,int) ;

__attribute__((used)) static int mxic_nfc_clk_setup(struct mxic_nand_ctlr *nfc, unsigned long freq)
{
 int ret;

 ret = clk_set_rate(nfc->send_clk, freq);
 if (ret)
  return ret;

 ret = clk_set_rate(nfc->send_dly_clk, freq);
 if (ret)
  return ret;





 mxic_nfc_set_input_delay(nfc, 0xf);
 ret = clk_set_phase(nfc->send_dly_clk, 9 * freq / 25000000);
 if (ret)
  return ret;

 return 0;
}
