
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_nand_controller {int cur_cs; } ;
struct tegra_nand_chip {int * cs; } ;
struct nand_chip {int controller; } ;


 struct tegra_nand_chip* to_tegra_chip (struct nand_chip*) ;
 struct tegra_nand_controller* to_tegra_ctrl (int ) ;

__attribute__((used)) static void tegra_nand_select_target(struct nand_chip *chip,
         unsigned int die_nr)
{
 struct tegra_nand_chip *nand = to_tegra_chip(chip);
 struct tegra_nand_controller *ctrl = to_tegra_ctrl(chip->controller);

 ctrl->cur_cs = nand->cs[die_nr];
}
