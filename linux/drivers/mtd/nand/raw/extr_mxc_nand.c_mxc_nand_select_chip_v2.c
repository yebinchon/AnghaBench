
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mxc_nand_host {int clk_act; int active_cs; int clk; } ;


 int NFC_V1_V2_BUF_ADDR ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int writew (int,int ) ;

__attribute__((used)) static void mxc_nand_select_chip_v2(struct nand_chip *nand_chip, int chip)
{
 struct mxc_nand_host *host = nand_get_controller_data(nand_chip);

 if (chip == -1) {

  if (host->clk_act) {
   clk_disable_unprepare(host->clk);
   host->clk_act = 0;
  }
  return;
 }

 if (!host->clk_act) {

  clk_prepare_enable(host->clk);
  host->clk_act = 1;
 }

 host->active_cs = chip;
 writew(host->active_cs << 4, NFC_V1_V2_BUF_ADDR);
}
