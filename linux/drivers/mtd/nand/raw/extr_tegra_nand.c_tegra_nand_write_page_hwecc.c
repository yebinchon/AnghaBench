
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tegra_nand_controller {int dummy; } ;
struct nand_chip {int * oob_poi; int controller; } ;
struct mtd_info {int dummy; } ;


 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int tegra_nand_hw_ecc (struct tegra_nand_controller*,struct nand_chip*,int) ;
 int tegra_nand_page_xfer (struct mtd_info*,struct nand_chip*,void*,void*,int ,int,int) ;
 struct tegra_nand_controller* to_tegra_ctrl (int ) ;

__attribute__((used)) static int tegra_nand_write_page_hwecc(struct nand_chip *chip, const u8 *buf,
           int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct tegra_nand_controller *ctrl = to_tegra_ctrl(chip->controller);
 void *oob_buf = oob_required ? chip->oob_poi : ((void*)0);
 int ret;

 tegra_nand_hw_ecc(ctrl, chip, 1);
 ret = tegra_nand_page_xfer(mtd, chip, (void *)buf, oob_buf,
       0, page, 0);
 tegra_nand_hw_ecc(ctrl, chip, 0);

 return ret;
}
