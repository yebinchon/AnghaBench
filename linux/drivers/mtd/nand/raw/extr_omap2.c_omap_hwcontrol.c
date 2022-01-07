
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gpmc_nand_data; int gpmc_nand_address; int gpmc_nand_command; } ;
struct omap_nand_info {TYPE_1__ reg; } ;
struct nand_chip {int dummy; } ;


 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 struct omap_nand_info* mtd_to_omap (int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 int writeb (int,int ) ;

__attribute__((used)) static void omap_hwcontrol(struct nand_chip *chip, int cmd, unsigned int ctrl)
{
 struct omap_nand_info *info = mtd_to_omap(nand_to_mtd(chip));

 if (cmd != NAND_CMD_NONE) {
  if (ctrl & NAND_CLE)
   writeb(cmd, info->reg.gpmc_nand_command);

  else if (ctrl & NAND_ALE)
   writeb(cmd, info->reg.gpmc_nand_address);

  else
   writeb(cmd, info->reg.gpmc_nand_data);
 }
}
