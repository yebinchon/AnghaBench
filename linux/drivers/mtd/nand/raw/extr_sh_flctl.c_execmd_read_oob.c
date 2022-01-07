
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_flctl {scalar_t__ page_size; } ;
struct mtd_info {int dummy; } ;


 int FLDTCNTR (struct sh_flctl*) ;
 int NAND_CMD_READ0 ;
 int NAND_CMD_READSTART ;
 int empty_fifo (struct sh_flctl*) ;
 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;
 int read_fiforeg (struct sh_flctl*,int,int) ;
 int set_addr (struct mtd_info*,int,int) ;
 int set_cmd_regs (struct mtd_info*,int,int) ;
 int start_translation (struct sh_flctl*) ;
 int wait_completion (struct sh_flctl*) ;
 int writel (int,int ) ;

__attribute__((used)) static void execmd_read_oob(struct mtd_info *mtd, int page_addr)
{
 struct sh_flctl *flctl = mtd_to_flctl(mtd);
 int page_sectors = flctl->page_size ? 4 : 1;
 int i;

 set_cmd_regs(mtd, NAND_CMD_READ0,
  (NAND_CMD_READSTART << 8) | NAND_CMD_READ0);

 empty_fifo(flctl);

 for (i = 0; i < page_sectors; i++) {
  set_addr(mtd, (512 + 16) * i + 512 , page_addr);
  writel(16, FLDTCNTR(flctl));

  start_translation(flctl);
  read_fiforeg(flctl, 16, 16 * i);
  wait_completion(flctl);
 }
}
