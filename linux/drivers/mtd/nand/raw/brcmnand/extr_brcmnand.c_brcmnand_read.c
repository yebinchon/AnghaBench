
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct nand_chip {int dummy; } ;
struct TYPE_2__ {unsigned int corrected; int failed; } ;
struct mtd_info {int bitflip_threshold; TYPE_1__ ecc_stats; int oobsize; } ;
struct brcmnand_host {struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int nand_version; int dev; } ;


 int CMD_PAGE_READ ;
 int EIO ;
 unsigned int FC_BYTES ;
 int brcmnand_clear_ecc_addr (struct brcmnand_controller*) ;
 unsigned int brcmnand_count_corrected (struct brcmnand_controller*) ;
 int brcmnand_dma_trans (struct brcmnand_host*,scalar_t__,int *,unsigned int,int ) ;
 int brcmnand_read_by_pio (struct mtd_info*,struct nand_chip*,scalar_t__,unsigned int,int *,int *,scalar_t__*) ;
 int brcmstb_nand_verify_erased_page (struct mtd_info*,struct nand_chip*,int *,scalar_t__) ;
 int dev_dbg (int ,char*,unsigned long long,...) ;
 scalar_t__ flash_dma_buf_ok (int *) ;
 scalar_t__ has_flash_dma (struct brcmnand_controller*) ;
 int max (int ,unsigned int) ;
 int memset (int *,int,int ) ;
 scalar_t__ mtd_is_bitflip (int) ;
 scalar_t__ mtd_is_bitflip_or_eccerr (int) ;
 scalar_t__ mtd_is_eccerr (int) ;
 struct brcmnand_host* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static int brcmnand_read(struct mtd_info *mtd, struct nand_chip *chip,
    u64 addr, unsigned int trans, u32 *buf, u8 *oob)
{
 struct brcmnand_host *host = nand_get_controller_data(chip);
 struct brcmnand_controller *ctrl = host->ctrl;
 u64 err_addr = 0;
 int err;
 bool retry = 1;

 dev_dbg(ctrl->dev, "read %llx -> %p\n", (unsigned long long)addr, buf);

try_dmaread:
 brcmnand_clear_ecc_addr(ctrl);

 if (has_flash_dma(ctrl) && !oob && flash_dma_buf_ok(buf)) {
  err = brcmnand_dma_trans(host, addr, buf, trans * FC_BYTES,
          CMD_PAGE_READ);
  if (err) {
   if (mtd_is_bitflip_or_eccerr(err))
    err_addr = addr;
   else
    return -EIO;
  }
 } else {
  if (oob)
   memset(oob, 0x99, mtd->oobsize);

  err = brcmnand_read_by_pio(mtd, chip, addr, trans, buf,
            oob, &err_addr);
 }

 if (mtd_is_eccerr(err)) {
  if ((ctrl->nand_version == 0x0700) ||
      (ctrl->nand_version == 0x0701)) {
   if (retry) {
    retry = 0;
    goto try_dmaread;
   }
  }





  if (ctrl->nand_version < 0x0702) {
   err = brcmstb_nand_verify_erased_page(mtd, chip, buf,
             addr);

   if (err >= 0)
    return err;
  }

  dev_dbg(ctrl->dev, "uncorrectable error at 0x%llx\n",
   (unsigned long long)err_addr);
  mtd->ecc_stats.failed++;

  return 0;
 }

 if (mtd_is_bitflip(err)) {
  unsigned int corrected = brcmnand_count_corrected(ctrl);

  dev_dbg(ctrl->dev, "corrected error at 0x%llx\n",
   (unsigned long long)err_addr);
  mtd->ecc_stats.corrected += corrected;

  return max(mtd->bitflip_threshold, corrected);
 }

 return 0;
}
