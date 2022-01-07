
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip_delay; int dev_ready; int (* cmd_ctrl ) (struct nand_chip*,unsigned int const,int) ;} ;
struct nand_chip {int options; TYPE_1__ legacy; } ;
struct mtd_info {scalar_t__ writesize; } ;


 int NAND_ALE ;
 int NAND_BUSWIDTH_16 ;
 int NAND_CLE ;







 unsigned int NAND_CMD_READOOB ;
 unsigned int const NAND_CMD_READSTART ;



 unsigned int const NAND_CMD_RNDOUTSTART ;



 int NAND_CTRL_CHANGE ;
 int NAND_NCE ;
 int NAND_ROW_ADDR_3 ;
 int nand_ccs_delay (struct nand_chip*) ;
 int nand_opcode_8bits (unsigned int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_wait_ready (struct nand_chip*) ;
 int nand_wait_status_ready (struct nand_chip*,int) ;
 int ndelay (int) ;
 int stub1 (struct nand_chip*,unsigned int,int) ;
 int stub10 (struct nand_chip*,unsigned int const,int) ;
 int stub11 (struct nand_chip*,unsigned int const,int) ;
 int stub12 (struct nand_chip*,unsigned int const,int) ;
 int stub13 (struct nand_chip*,unsigned int const,int) ;
 int stub2 (struct nand_chip*,int,int) ;
 int stub3 (struct nand_chip*,int,int) ;
 int stub4 (struct nand_chip*,int,int) ;
 int stub5 (struct nand_chip*,int,int) ;
 int stub6 (struct nand_chip*,int,int) ;
 int stub7 (struct nand_chip*,unsigned int,int) ;
 int stub8 (struct nand_chip*,int const,int) ;
 int stub9 (struct nand_chip*,unsigned int const,int) ;
 int udelay (int ) ;

__attribute__((used)) static void nand_command_lp(struct nand_chip *chip, unsigned int command,
       int column, int page_addr)
{
 struct mtd_info *mtd = nand_to_mtd(chip);


 if (command == NAND_CMD_READOOB) {
  column += mtd->writesize;
  command = 135;
 }


 if (command != 137)
  chip->legacy.cmd_ctrl(chip, command,
          NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);

 if (column != -1 || page_addr != -1) {
  int ctrl = NAND_CTRL_CHANGE | NAND_NCE | NAND_ALE;


  if (column != -1) {

   if (chip->options & NAND_BUSWIDTH_16 &&
     !nand_opcode_8bits(command))
    column >>= 1;
   chip->legacy.cmd_ctrl(chip, column, ctrl);
   ctrl &= ~NAND_CTRL_CHANGE;


   if (!nand_opcode_8bits(command))
    chip->legacy.cmd_ctrl(chip, column >> 8, ctrl);
  }
  if (page_addr != -1) {
   chip->legacy.cmd_ctrl(chip, page_addr, ctrl);
   chip->legacy.cmd_ctrl(chip, page_addr >> 8,
          NAND_NCE | NAND_ALE);
   if (chip->options & NAND_ROW_ADDR_3)
    chip->legacy.cmd_ctrl(chip, page_addr >> 16,
            NAND_NCE | NAND_ALE);
  }
 }
 chip->legacy.cmd_ctrl(chip, 137,
         NAND_NCE | NAND_CTRL_CHANGE);





 switch (command) {

 case 137:
 case 140:
 case 136:
 case 139:
 case 138:
 case 130:
 case 128:
 case 134:
 case 129:
  return;

 case 132:
  nand_ccs_delay(chip);
  return;

 case 133:
  if (chip->legacy.dev_ready)
   break;
  udelay(chip->legacy.chip_delay);
  chip->legacy.cmd_ctrl(chip, 128,
          NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
  chip->legacy.cmd_ctrl(chip, 137,
          NAND_NCE | NAND_CTRL_CHANGE);

  nand_wait_status_ready(chip, 250);
  return;

 case 131:

  chip->legacy.cmd_ctrl(chip, NAND_CMD_RNDOUTSTART,
          NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
  chip->legacy.cmd_ctrl(chip, 137,
          NAND_NCE | NAND_CTRL_CHANGE);

  nand_ccs_delay(chip);
  return;

 case 135:






  if (column == -1 && page_addr == -1)
   return;

  chip->legacy.cmd_ctrl(chip, NAND_CMD_READSTART,
          NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
  chip->legacy.cmd_ctrl(chip, 137,
          NAND_NCE | NAND_CTRL_CHANGE);


 default:




  if (!chip->legacy.dev_ready) {
   udelay(chip->legacy.chip_delay);
   return;
  }
 }





 ndelay(100);

 nand_wait_ready(chip);
}
