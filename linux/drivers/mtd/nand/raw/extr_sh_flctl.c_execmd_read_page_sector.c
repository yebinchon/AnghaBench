
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_flctl {TYPE_1__* pdev; int * done_buff; scalar_t__ page_size; } ;
struct TYPE_4__ {int failed; int corrected; } ;
struct mtd_info {int writesize; TYPE_2__ ecc_stats; } ;
typedef enum flctl_ecc_res_t { ____Placeholder_flctl_ecc_res_t } flctl_ecc_res_t ;
struct TYPE_3__ {int dev; } ;


 int ACM_SACCES_MODE ;
 int FLADR (struct sh_flctl*) ;
 int FLCMDCR (struct sh_flctl*) ;
 int FLCMNCR (struct sh_flctl*) ;


 int NAND_CMD_READ0 ;
 int NAND_CMD_READSTART ;
 int _4ECCCORRECT ;
 int dev_info (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 int empty_fifo (struct sh_flctl*) ;
 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;
 int read_ecfiforeg (struct sh_flctl*,int *,int) ;
 int read_fiforeg (struct sh_flctl*,int,int) ;
 int readl (int ) ;
 int set_cmd_regs (struct mtd_info*,int,int) ;
 int start_translation (struct sh_flctl*) ;
 int wait_completion (struct sh_flctl*) ;
 int writel (int,int ) ;

__attribute__((used)) static void execmd_read_page_sector(struct mtd_info *mtd, int page_addr)
{
 struct sh_flctl *flctl = mtd_to_flctl(mtd);
 int sector, page_sectors;
 enum flctl_ecc_res_t ecc_result;

 page_sectors = flctl->page_size ? 4 : 1;

 set_cmd_regs(mtd, NAND_CMD_READ0,
  (NAND_CMD_READSTART << 8) | NAND_CMD_READ0);

 writel(readl(FLCMNCR(flctl)) | ACM_SACCES_MODE | _4ECCCORRECT,
   FLCMNCR(flctl));
 writel(readl(FLCMDCR(flctl)) | page_sectors, FLCMDCR(flctl));
 writel(page_addr << 2, FLADR(flctl));

 empty_fifo(flctl);
 start_translation(flctl);

 for (sector = 0; sector < page_sectors; sector++) {
  read_fiforeg(flctl, 512, 512 * sector);

  ecc_result = read_ecfiforeg(flctl,
   &flctl->done_buff[mtd->writesize + 16 * sector],
   sector);

  switch (ecc_result) {
  case 128:
   dev_info(&flctl->pdev->dev,
    "applied ecc on page 0x%x", page_addr);
   mtd->ecc_stats.corrected++;
   break;
  case 129:
   dev_warn(&flctl->pdev->dev,
    "page 0x%x contains corrupted data\n",
    page_addr);
   mtd->ecc_stats.failed++;
   break;
  default:
   ;
  }
 }

 wait_completion(flctl);

 writel(readl(FLCMNCR(flctl)) & ~(ACM_SACCES_MODE | _4ECCCORRECT),
   FLCMNCR(flctl));
}
