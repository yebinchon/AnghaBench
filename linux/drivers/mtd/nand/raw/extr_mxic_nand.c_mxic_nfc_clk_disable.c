
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxic_nand_ctlr {int ps_clk; int send_dly_clk; int send_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void mxic_nfc_clk_disable(struct mxic_nand_ctlr *nfc)
{
 clk_disable_unprepare(nfc->send_clk);
 clk_disable_unprepare(nfc->send_dly_clk);
 clk_disable_unprepare(nfc->ps_clk);
}
