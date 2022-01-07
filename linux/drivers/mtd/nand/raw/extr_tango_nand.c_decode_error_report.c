
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tango_nfc {scalar_t__ mem_base; scalar_t__ reg_base; } ;
struct nand_chip {int controller; } ;
struct TYPE_2__ {int corrected; } ;
struct mtd_info {TYPE_1__ ecc_stats; } ;


 scalar_t__ DECODE_FAIL_PKT_0 (int) ;
 scalar_t__ DECODE_FAIL_PKT_N (int) ;
 int EBADMSG ;
 scalar_t__ ERROR_REPORT ;
 scalar_t__ ERR_COUNT_PKT_0 (int) ;
 scalar_t__ ERR_COUNT_PKT_N (int) ;
 scalar_t__ NFC_XFER_STATUS ;
 int PAGE_IS_EMPTY ;
 int max (scalar_t__,scalar_t__) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int readl_relaxed (scalar_t__) ;
 struct tango_nfc* to_tango_nfc (int ) ;

__attribute__((used)) static int decode_error_report(struct nand_chip *chip)
{
 u32 status, res;
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct tango_nfc *nfc = to_tango_nfc(chip->controller);

 status = readl_relaxed(nfc->reg_base + NFC_XFER_STATUS);
 if (status & PAGE_IS_EMPTY)
  return 0;

 res = readl_relaxed(nfc->mem_base + ERROR_REPORT);

 if (DECODE_FAIL_PKT_0(res) || DECODE_FAIL_PKT_N(res))
  return -EBADMSG;


 mtd->ecc_stats.corrected +=
  ERR_COUNT_PKT_0(res) + ERR_COUNT_PKT_N(res);

 return max(ERR_COUNT_PKT_0(res), ERR_COUNT_PKT_N(res));
}
