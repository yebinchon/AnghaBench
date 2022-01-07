
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_nand_controller {scalar_t__ regs; } ;
struct tegra_nand_chip {int config; int config_ecc; int bch_config; } ;
struct TYPE_2__ {scalar_t__ algo; } ;
struct nand_chip {TYPE_1__ ecc; } ;


 scalar_t__ BCH_CONFIG ;
 scalar_t__ CONFIG ;
 scalar_t__ NAND_ECC_BCH ;
 struct tegra_nand_chip* to_tegra_chip (struct nand_chip*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void tegra_nand_hw_ecc(struct tegra_nand_controller *ctrl,
         struct nand_chip *chip, bool enable)
{
 struct tegra_nand_chip *nand = to_tegra_chip(chip);

 if (chip->ecc.algo == NAND_ECC_BCH && enable)
  writel_relaxed(nand->bch_config, ctrl->regs + BCH_CONFIG);
 else
  writel_relaxed(0, ctrl->regs + BCH_CONFIG);

 if (enable)
  writel_relaxed(nand->config_ecc, ctrl->regs + CONFIG);
 else
  writel_relaxed(nand->config, ctrl->regs + CONFIG);
}
