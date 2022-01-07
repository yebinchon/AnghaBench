
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxic_nand_ctlr {int ps_clk; int send_clk; int send_dly_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int mxic_nfc_clk_enable(struct mxic_nand_ctlr *nfc)
{
 int ret;

 ret = clk_prepare_enable(nfc->ps_clk);
 if (ret)
  return ret;

 ret = clk_prepare_enable(nfc->send_clk);
 if (ret)
  goto err_ps_clk;

 ret = clk_prepare_enable(nfc->send_dly_clk);
 if (ret)
  goto err_send_dly_clk;

 return ret;

err_send_dly_clk:
 clk_disable_unprepare(nfc->send_clk);
err_ps_clk:
 clk_disable_unprepare(nfc->ps_clk);

 return ret;
}
