
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mxc_nand_host {int clk_act; int clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static void mxc_nand_select_chip_v1_v3(struct nand_chip *nand_chip, int chip)
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
}
