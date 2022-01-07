
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct meson_nfc_nand_chip {int nsels; scalar_t__ clk_rate; int bus_timing; int tbers_max; int tadl; int twb; scalar_t__* sels; } ;
struct TYPE_4__ {int tbers_max; int tadl; int twb; } ;
struct TYPE_3__ {int chip_select; int rb_select; } ;
struct meson_nfc {scalar_t__ clk_rate; int bus_timing; scalar_t__ reg_base; int dev; int device_clk; TYPE_2__ timing; TYPE_1__ param; } ;


 int NAND_CE0 ;
 int NAND_CE1 ;
 int NFC_CLK_CYCLE ;
 scalar_t__ NFC_REG_CFG ;
 scalar_t__ NFC_REG_CMD ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int clk_set_rate (int ,scalar_t__) ;
 int dev_err (int ,char*) ;
 struct meson_nfc* nand_get_controller_data (struct nand_chip*) ;
 struct meson_nfc_nand_chip* to_meson_nand (struct nand_chip*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void meson_nfc_select_chip(struct nand_chip *nand, int chip)
{
 struct meson_nfc_nand_chip *meson_chip = to_meson_nand(nand);
 struct meson_nfc *nfc = nand_get_controller_data(nand);
 int ret, value;

 if (chip < 0 || WARN_ON_ONCE(chip >= meson_chip->nsels))
  return;

 nfc->param.chip_select = meson_chip->sels[chip] ? NAND_CE1 : NAND_CE0;
 nfc->param.rb_select = nfc->param.chip_select;
 nfc->timing.twb = meson_chip->twb;
 nfc->timing.tadl = meson_chip->tadl;
 nfc->timing.tbers_max = meson_chip->tbers_max;

 if (nfc->clk_rate != meson_chip->clk_rate) {
  ret = clk_set_rate(nfc->device_clk, meson_chip->clk_rate);
  if (ret) {
   dev_err(nfc->dev, "failed to set clock rate\n");
   return;
  }
  nfc->clk_rate = meson_chip->clk_rate;
 }
 if (nfc->bus_timing != meson_chip->bus_timing) {
  value = (NFC_CLK_CYCLE - 1) | (meson_chip->bus_timing << 5);
  writel(value, nfc->reg_base + NFC_REG_CFG);
  writel((1 << 31), nfc->reg_base + NFC_REG_CMD);
  nfc->bus_timing = meson_chip->bus_timing;
 }
}
