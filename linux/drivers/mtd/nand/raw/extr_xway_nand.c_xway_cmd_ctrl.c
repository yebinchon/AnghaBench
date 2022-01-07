
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;


 int EBU_NAND_WAIT ;
 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 int NAND_WAIT_WR_C ;
 int NAND_WRITE_ADDR ;
 int NAND_WRITE_CMD ;
 int ltq_ebu_r32 (int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int xway_writeb (struct mtd_info*,int ,int) ;

__attribute__((used)) static void xway_cmd_ctrl(struct nand_chip *chip, int cmd, unsigned int ctrl)
{
 struct mtd_info *mtd = nand_to_mtd(chip);

 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  xway_writeb(mtd, NAND_WRITE_CMD, cmd);
 else if (ctrl & NAND_ALE)
  xway_writeb(mtd, NAND_WRITE_ADDR, cmd);

 while ((ltq_ebu_r32(EBU_NAND_WAIT) & NAND_WAIT_WR_C) == 0)
  ;
}
