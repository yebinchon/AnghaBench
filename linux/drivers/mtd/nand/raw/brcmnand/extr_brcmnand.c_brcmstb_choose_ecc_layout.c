
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_ecc_ctrl {int bytes; } ;
struct mtd_info {int dummy; } ;
struct TYPE_4__ {struct nand_ecc_ctrl ecc; } ;
struct brcmnand_cfg {unsigned int ecc_level; int spare_area_size; int sector_size_1k; int page_size; } ;
struct brcmnand_host {TYPE_1__* pdev; int ctrl; TYPE_2__ chip; struct brcmnand_cfg hwcfg; } ;
struct TYPE_3__ {int dev; } ;


 int DIV_ROUND_UP (unsigned int,int) ;
 int EINVAL ;
 int brcmnand_bch_lp_ooblayout_ops ;
 int brcmnand_bch_sp_ooblayout_ops ;
 int brcmnand_hamming_ooblayout_ops ;
 int dev_err (int *,char*,int,int) ;
 scalar_t__ is_hamming_ecc (int ,struct brcmnand_cfg*) ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 struct mtd_info* nand_to_mtd (TYPE_2__*) ;

__attribute__((used)) static int brcmstb_choose_ecc_layout(struct brcmnand_host *host)
{
 struct brcmnand_cfg *p = &host->hwcfg;
 struct mtd_info *mtd = nand_to_mtd(&host->chip);
 struct nand_ecc_ctrl *ecc = &host->chip.ecc;
 unsigned int ecc_level = p->ecc_level;
 int sas = p->spare_area_size << p->sector_size_1k;
 int sectors = p->page_size / (512 << p->sector_size_1k);

 if (p->sector_size_1k)
  ecc_level <<= 1;

 if (is_hamming_ecc(host->ctrl, p)) {
  ecc->bytes = 3 * sectors;
  mtd_set_ooblayout(mtd, &brcmnand_hamming_ooblayout_ops);
  return 0;
 }







 ecc->bytes = DIV_ROUND_UP(ecc_level * 14, 8);
 if (p->page_size == 512)
  mtd_set_ooblayout(mtd, &brcmnand_bch_sp_ooblayout_ops);
 else
  mtd_set_ooblayout(mtd, &brcmnand_bch_lp_ooblayout_ops);

 if (ecc->bytes >= sas) {
  dev_err(&host->pdev->dev,
   "error: ECC too large for OOB (ECC bytes %d, spare sector %d)\n",
   ecc->bytes, sas);
  return -EINVAL;
 }

 return 0;
}
