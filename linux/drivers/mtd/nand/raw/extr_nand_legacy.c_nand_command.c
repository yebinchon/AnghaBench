
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip_delay; int dev_ready; int (* cmd_ctrl ) (struct nand_chip*,unsigned int const,int) ;} ;
struct nand_chip {int options; TYPE_1__ legacy; } ;
struct mtd_info {int writesize; } ;


 int NAND_BUSWIDTH_16 ;





 int NAND_CMD_READ1 ;

 int NAND_CMD_READOOB ;




 int NAND_CTRL_ALE ;
 int NAND_CTRL_CHANGE ;
 int NAND_CTRL_CLE ;
 int NAND_NCE ;
 int NAND_ROW_ADDR_3 ;
 int nand_opcode_8bits (unsigned int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_wait_ready (struct nand_chip*) ;
 int nand_wait_status_ready (struct nand_chip*,int) ;
 int ndelay (int) ;
 int stub1 (struct nand_chip*,int,int) ;
 int stub2 (struct nand_chip*,unsigned int,int) ;
 int stub3 (struct nand_chip*,int,int) ;
 int stub4 (struct nand_chip*,int,int) ;
 int stub5 (struct nand_chip*,int,int) ;
 int stub6 (struct nand_chip*,int,int) ;
 int stub7 (struct nand_chip*,unsigned int,int) ;
 int stub8 (struct nand_chip*,int const,int) ;
 int stub9 (struct nand_chip*,unsigned int const,int) ;
 int udelay (int ) ;

__attribute__((used)) static void nand_command(struct nand_chip *chip, unsigned int command,
    int column, int page_addr)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ctrl = NAND_CTRL_CLE | NAND_CTRL_CHANGE;


 if (command == 130) {
  int readcmd;

  if (column >= mtd->writesize) {

   column -= mtd->writesize;
   readcmd = NAND_CMD_READOOB;
  } else if (column < 256) {

   readcmd = 133;
  } else {
   column -= 256;
   readcmd = NAND_CMD_READ1;
  }
  chip->legacy.cmd_ctrl(chip, readcmd, ctrl);
  ctrl &= ~NAND_CTRL_CHANGE;
 }
 if (command != 135)
  chip->legacy.cmd_ctrl(chip, command, ctrl);


 ctrl = NAND_CTRL_ALE | NAND_CTRL_CHANGE;

 if (column != -1) {

  if (chip->options & NAND_BUSWIDTH_16 &&
    !nand_opcode_8bits(command))
   column >>= 1;
  chip->legacy.cmd_ctrl(chip, column, ctrl);
  ctrl &= ~NAND_CTRL_CHANGE;
 }
 if (page_addr != -1) {
  chip->legacy.cmd_ctrl(chip, page_addr, ctrl);
  ctrl &= ~NAND_CTRL_CHANGE;
  chip->legacy.cmd_ctrl(chip, page_addr >> 8, ctrl);
  if (chip->options & NAND_ROW_ADDR_3)
   chip->legacy.cmd_ctrl(chip, page_addr >> 16, ctrl);
 }
 chip->legacy.cmd_ctrl(chip, 135,
         NAND_NCE | NAND_CTRL_CHANGE);





 switch (command) {

 case 135:
 case 134:
 case 137:
 case 136:
 case 130:
 case 128:
 case 132:
 case 129:
  return;

 case 131:
  if (chip->legacy.dev_ready)
   break;
  udelay(chip->legacy.chip_delay);
  chip->legacy.cmd_ctrl(chip, 128,
          NAND_CTRL_CLE | NAND_CTRL_CHANGE);
  chip->legacy.cmd_ctrl(chip, 135,
          NAND_NCE | NAND_CTRL_CHANGE);

  nand_wait_status_ready(chip, 250);
  return;


 case 133:






  if (column == -1 && page_addr == -1)
   return;


 default:




  if (!chip->legacy.dev_ready) {
   udelay(chip->legacy.chip_delay);
   return;
  }
 }




 ndelay(100);

 nand_wait_ready(chip);
}
