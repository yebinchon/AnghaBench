
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_nand_controller {int clk; struct nand_chip* chip; } ;
struct platform_device {int dummy; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int mtd_device_unregister (struct mtd_info*) ;
 int nand_cleanup (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct tegra_nand_controller* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int tegra_nand_remove(struct platform_device *pdev)
{
 struct tegra_nand_controller *ctrl = platform_get_drvdata(pdev);
 struct nand_chip *chip = ctrl->chip;
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;

 ret = mtd_device_unregister(mtd);
 if (ret)
  return ret;

 nand_cleanup(chip);

 clk_disable_unprepare(ctrl->clk);

 return 0;
}
