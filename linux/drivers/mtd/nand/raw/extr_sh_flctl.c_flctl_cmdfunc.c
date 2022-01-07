
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int options; } ;
struct sh_flctl {int read_bytes; int index; int erase1_page_addr; int seqin_column; int seqin_page_addr; int seqin_read_cmd; TYPE_2__* pdev; int hwecc; int page_size; TYPE_1__ chip; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct TYPE_4__ {int dev; } ;


 int FLDTCNTR (struct sh_flctl*) ;
 int NAND_BUSWIDTH_16 ;







 int NAND_CMD_READSTART ;


 int NAND_CMD_RNDOUTSTART ;


 int empty_fifo (struct sh_flctl*) ;
 int execmd_read_oob (struct mtd_info*,int) ;
 int execmd_read_page_sector (struct mtd_info*,int) ;
 int execmd_write_oob (struct mtd_info*) ;
 int execmd_write_page_sector (struct mtd_info*) ;
 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int pr_err (char*) ;
 int read_datareg (struct sh_flctl*,int ) ;
 int read_fiforeg (struct sh_flctl*,int,int ) ;
 int set_addr (struct mtd_info*,int,int) ;
 int set_cmd_regs (struct mtd_info*,int const,unsigned int) ;
 int start_translation (struct sh_flctl*) ;
 int wait_completion (struct sh_flctl*) ;
 int write_fiforeg (struct sh_flctl*,int,int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void flctl_cmdfunc(struct nand_chip *chip, unsigned int command,
   int column, int page_addr)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct sh_flctl *flctl = mtd_to_flctl(mtd);
 uint32_t read_cmd = 0;

 pm_runtime_get_sync(&flctl->pdev->dev);

 flctl->read_bytes = 0;
 if (command != 136)
  flctl->index = 0;

 switch (command) {
 case 134:
 case 135:
  if (flctl->hwecc) {

   execmd_read_page_sector(mtd, page_addr);
   break;
  }
  if (flctl->page_size)
   set_cmd_regs(mtd, command, (NAND_CMD_READSTART << 8)
    | command);
  else
   set_cmd_regs(mtd, command, command);

  set_addr(mtd, 0, page_addr);

  flctl->read_bytes = mtd->writesize + mtd->oobsize;
  if (flctl->chip.options & NAND_BUSWIDTH_16)
   column >>= 1;
  flctl->index += column;
  goto read_normal_exit;

 case 132:
  if (flctl->hwecc) {

   execmd_read_oob(mtd, page_addr);
   break;
  }

  if (flctl->page_size) {
   set_cmd_regs(mtd, command, (NAND_CMD_READSTART << 8)
    | 135);
   set_addr(mtd, mtd->writesize, page_addr);
  } else {
   set_cmd_regs(mtd, command, command);
   set_addr(mtd, 0, page_addr);
  }
  flctl->read_bytes = mtd->oobsize;
  goto read_normal_exit;

 case 130:
  if (flctl->hwecc)
   break;

  if (flctl->page_size)
   set_cmd_regs(mtd, command, (NAND_CMD_RNDOUTSTART << 8)
    | command);
  else
   set_cmd_regs(mtd, command, command);

  set_addr(mtd, column, 0);

  flctl->read_bytes = mtd->writesize + mtd->oobsize - column;
  goto read_normal_exit;

 case 133:
  set_cmd_regs(mtd, command, command);


  if (flctl->chip.options & NAND_BUSWIDTH_16)
   column <<= 1;
  set_addr(mtd, column, 0);

  flctl->read_bytes = 8;
  writel(flctl->read_bytes, FLDTCNTR(flctl));
  empty_fifo(flctl);
  start_translation(flctl);
  read_fiforeg(flctl, flctl->read_bytes, 0);
  wait_completion(flctl);
  break;

 case 138:
  flctl->erase1_page_addr = page_addr;
  break;

 case 137:
  set_cmd_regs(mtd, 138,
   (command << 8) | 138);
  set_addr(mtd, -1, flctl->erase1_page_addr);
  start_translation(flctl);
  wait_completion(flctl);
  break;

 case 129:
  if (!flctl->page_size) {

   if (column >= mtd->writesize) {
    column -= mtd->writesize;
    read_cmd = 132;
   } else if (column < 256) {
    read_cmd = 135;
   } else {
    column -= 256;
    read_cmd = 134;
   }
  }
  flctl->seqin_column = column;
  flctl->seqin_page_addr = page_addr;
  flctl->seqin_read_cmd = read_cmd;
  break;

 case 136:
  empty_fifo(flctl);
  if (!flctl->page_size) {
   set_cmd_regs(mtd, 129,
     flctl->seqin_read_cmd);
   set_addr(mtd, -1, -1);
   writel(0, FLDTCNTR(flctl));
   start_translation(flctl);
   wait_completion(flctl);
  }
  if (flctl->hwecc) {

   if (flctl->seqin_column == mtd->writesize)
    execmd_write_oob(mtd);
   else if (!flctl->seqin_column)
    execmd_write_page_sector(mtd);
   else
    pr_err("Invalid address !?\n");
   break;
  }
  set_cmd_regs(mtd, command, (command << 8) | 129);
  set_addr(mtd, flctl->seqin_column, flctl->seqin_page_addr);
  writel(flctl->index, FLDTCNTR(flctl));
  start_translation(flctl);
  write_fiforeg(flctl, flctl->index, 0);
  wait_completion(flctl);
  break;

 case 128:
  set_cmd_regs(mtd, command, command);
  set_addr(mtd, -1, -1);

  flctl->read_bytes = 1;
  writel(flctl->read_bytes, FLDTCNTR(flctl));
  start_translation(flctl);
  read_datareg(flctl, 0);
  break;

 case 131:
  set_cmd_regs(mtd, command, command);
  set_addr(mtd, -1, -1);

  writel(0, FLDTCNTR(flctl));
  start_translation(flctl);
  wait_completion(flctl);
  break;

 default:
  break;
 }
 goto runtime_exit;

read_normal_exit:
 writel(flctl->read_bytes, FLDTCNTR(flctl));
 empty_fifo(flctl);
 start_translation(flctl);
 read_fiforeg(flctl, flctl->read_bytes, 0);
 wait_completion(flctl);
runtime_exit:
 pm_runtime_put_sync(&flctl->pdev->dev);
 return;
}
