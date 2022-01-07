
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_nand_controller {int dev; scalar_t__ regs; } ;


 int ARRAY_SIZE (char**) ;
 int dev_err (int ,char*,...) ;
 int readl_relaxed (scalar_t__) ;
 char** tegra_nand_reg_names ;

__attribute__((used)) static void tegra_nand_dump_reg(struct tegra_nand_controller *ctrl)
{
 u32 reg;
 int i;

 dev_err(ctrl->dev, "Tegra NAND controller register dump\n");
 for (i = 0; i < ARRAY_SIZE(tegra_nand_reg_names); i++) {
  const char *reg_name = tegra_nand_reg_names[i];

  if (!reg_name)
   continue;

  reg = readl_relaxed(ctrl->regs + (i * 4));
  dev_err(ctrl->dev, "%s: 0x%08x\n", reg_name, reg);
 }
}
