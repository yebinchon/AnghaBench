
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_flctl {int seqin_page_addr; scalar_t__ page_size; } ;
struct mtd_info {int dummy; } ;


 int FLDTCNTR (struct sh_flctl*) ;
 int NAND_CMD_PAGEPROG ;
 int NAND_CMD_SEQIN ;
 int empty_fifo (struct sh_flctl*) ;
 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;
 int set_addr (struct mtd_info*,int,int) ;
 int set_cmd_regs (struct mtd_info*,int,int) ;
 int start_translation (struct sh_flctl*) ;
 int wait_completion (struct sh_flctl*) ;
 int write_fiforeg (struct sh_flctl*,int,int) ;
 int writel (int,int ) ;

__attribute__((used)) static void execmd_write_oob(struct mtd_info *mtd)
{
 struct sh_flctl *flctl = mtd_to_flctl(mtd);
 int page_addr = flctl->seqin_page_addr;
 int sector, page_sectors;

 page_sectors = flctl->page_size ? 4 : 1;

 set_cmd_regs(mtd, NAND_CMD_PAGEPROG,
   (NAND_CMD_PAGEPROG << 8) | NAND_CMD_SEQIN);

 for (sector = 0; sector < page_sectors; sector++) {
  empty_fifo(flctl);
  set_addr(mtd, sector * 528 + 512, page_addr);
  writel(16, FLDTCNTR(flctl));

  start_translation(flctl);
  write_fiforeg(flctl, 16, 16 * sector);
  wait_completion(flctl);
 }
}
