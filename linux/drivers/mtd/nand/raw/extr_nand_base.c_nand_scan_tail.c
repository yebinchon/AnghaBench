
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_ecc_ctrl {int mode; scalar_t__ algo; int size; int strength; int bytes; int steps; int total; void* calc_buf; void* code_buf; void* write_oob; void* write_oob_raw; void* read_oob; void* read_oob_raw; scalar_t__ calculate; scalar_t__ correct; void* write_page_raw; void* read_page_raw; void* write_page; void* read_page; int hwctl; int write_subpage; int read_subpage; } ;
struct TYPE_2__ {int page; } ;
struct nand_chip {int bbt_options; int options; int subpagesize; int page_shift; void* data_buf; int base; TYPE_1__ pagecache; void* oob_poi; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int writesize; int oobsize; int ecc_strength; int ecc_step_size; int oobavail; int subpage_sft; scalar_t__ bitflip_threshold; int _max_bad_blocks; int _block_markbad; int _block_isbad; int _block_isreserved; int _reboot; int _resume; int _suspend; int * _unlock; int * _lock; int _sync; int _write_oob; int _read_oob; int _panic_write; int * _unpoint; int * _point; int _erase; int flags; int owner; int name; int ooblayout; } ;


 scalar_t__ DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MTD_CAP_ROM ;
 int NAND_BBT_NO_OOB_BBM ;
 int NAND_BBT_USE_FLASH ;
 scalar_t__ NAND_ECC_BCH ;
 scalar_t__ NAND_ECC_HAMMING ;






 int NAND_NO_SUBPAGE_WRITE ;
 int NAND_ROM ;
 int NAND_SKIP_BBTSCAN ;
 int NAND_SUBPAGE_READ ;
 int WARN (int,char*,...) ;
 scalar_t__ WARN_ON (int) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int mtd_ooblayout_count_freebytes (struct mtd_info*) ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 int nand_block_isbad ;
 int nand_block_isreserved ;
 int nand_block_markbad ;
 int nand_create_bbt (struct nand_chip*) ;
 int nand_deselect_target (struct nand_chip*) ;
 int nand_ecc_strength_good (struct nand_chip*) ;
 int nand_erase ;
 int nand_init_data_interface (struct nand_chip*) ;
 scalar_t__ nand_is_slc (struct nand_chip*) ;
 int nand_manufacturer_cleanup (struct nand_chip*) ;
 int nand_manufacturer_init (struct nand_chip*) ;
 int nand_ooblayout_lp_hamming_ops ;
 int nand_ooblayout_lp_ops ;
 int nand_ooblayout_sp_ops ;
 int nand_read_oob ;
 void* nand_read_oob_std ;
 void* nand_read_oob_syndrome ;
 void* nand_read_page_hwecc ;
 void* nand_read_page_hwecc_oob_first ;
 void* nand_read_page_raw ;
 void* nand_read_page_raw_syndrome ;
 void* nand_read_page_syndrome ;
 int nand_read_subpage ;
 int nand_resume ;
 int nand_select_target (struct nand_chip*,int ) ;
 int nand_set_ecc_soft_ops (struct nand_chip*) ;
 int nand_setup_data_interface (struct nand_chip*,int) ;
 int nand_shutdown ;
 int nand_suspend ;
 int nand_sync ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_write_oob ;
 void* nand_write_oob_std ;
 void* nand_write_oob_syndrome ;
 void* nand_write_page_hwecc ;
 void* nand_write_page_raw ;
 void* nand_write_page_raw_syndrome ;
 void* nand_write_page_syndrome ;
 int nand_write_subpage_hwecc ;
 int nanddev_cleanup (int *) ;
 int nanddev_init (int *,int *,int ) ;
 int nanddev_mtd_max_bad_blocks ;
 int nanddev_ntargets (int *) ;
 int panic_nand_write ;
 int pr_warn (char*,...) ;
 int rawnand_ops ;

__attribute__((used)) static int nand_scan_tail(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;
 int ret, i;


 if (WARN_ON((chip->bbt_options & NAND_BBT_NO_OOB_BBM) &&
     !(chip->bbt_options & NAND_BBT_USE_FLASH))) {
  return -EINVAL;
 }

 chip->data_buf = kmalloc(mtd->writesize + mtd->oobsize, GFP_KERNEL);
 if (!chip->data_buf)
  return -ENOMEM;







 nand_select_target(chip, 0);
 ret = nand_manufacturer_init(chip);
 nand_deselect_target(chip);
 if (ret)
  goto err_free_buf;


 chip->oob_poi = chip->data_buf + mtd->writesize;




 if (!mtd->ooblayout &&
     !(ecc->mode == 128 && ecc->algo == NAND_ECC_BCH)) {
  switch (mtd->oobsize) {
  case 8:
  case 16:
   mtd_set_ooblayout(mtd, &nand_ooblayout_sp_ops);
   break;
  case 64:
  case 128:
   mtd_set_ooblayout(mtd, &nand_ooblayout_lp_hamming_ops);
   break;
  default:







   if (ecc->mode == 130) {
    mtd_set_ooblayout(mtd,
      &nand_ooblayout_lp_ops);
    break;
   }

   WARN(1, "No oob scheme defined for oobsize %d\n",
    mtd->oobsize);
   ret = -EINVAL;
   goto err_nand_manuf_cleanup;
  }
 }






 switch (ecc->mode) {
 case 132:

  if (!ecc->calculate || !ecc->correct || !ecc->hwctl) {
   WARN(1, "No ECC functions supplied; hardware ECC not possible\n");
   ret = -EINVAL;
   goto err_nand_manuf_cleanup;
  }
  if (!ecc->read_page)
   ecc->read_page = nand_read_page_hwecc_oob_first;


 case 133:

  if (!ecc->read_page)
   ecc->read_page = nand_read_page_hwecc;
  if (!ecc->write_page)
   ecc->write_page = nand_write_page_hwecc;
  if (!ecc->read_page_raw)
   ecc->read_page_raw = nand_read_page_raw;
  if (!ecc->write_page_raw)
   ecc->write_page_raw = nand_write_page_raw;
  if (!ecc->read_oob)
   ecc->read_oob = nand_read_oob_std;
  if (!ecc->write_oob)
   ecc->write_oob = nand_write_oob_std;
  if (!ecc->read_subpage)
   ecc->read_subpage = nand_read_subpage;
  if (!ecc->write_subpage && ecc->hwctl && ecc->calculate)
   ecc->write_subpage = nand_write_subpage_hwecc;


 case 131:
  if ((!ecc->calculate || !ecc->correct || !ecc->hwctl) &&
      (!ecc->read_page ||
       ecc->read_page == nand_read_page_hwecc ||
       !ecc->write_page ||
       ecc->write_page == nand_write_page_hwecc)) {
   WARN(1, "No ECC functions supplied; hardware ECC not possible\n");
   ret = -EINVAL;
   goto err_nand_manuf_cleanup;
  }

  if (!ecc->read_page)
   ecc->read_page = nand_read_page_syndrome;
  if (!ecc->write_page)
   ecc->write_page = nand_write_page_syndrome;
  if (!ecc->read_page_raw)
   ecc->read_page_raw = nand_read_page_raw_syndrome;
  if (!ecc->write_page_raw)
   ecc->write_page_raw = nand_write_page_raw_syndrome;
  if (!ecc->read_oob)
   ecc->read_oob = nand_read_oob_syndrome;
  if (!ecc->write_oob)
   ecc->write_oob = nand_write_oob_syndrome;

  if (mtd->writesize >= ecc->size) {
   if (!ecc->strength) {
    WARN(1, "Driver must set ecc.strength when using hardware ECC\n");
    ret = -EINVAL;
    goto err_nand_manuf_cleanup;
   }
   break;
  }
  pr_warn("%d byte HW ECC not possible on %d byte page size, fallback to SW ECC\n",
   ecc->size, mtd->writesize);
  ecc->mode = 128;
  ecc->algo = NAND_ECC_HAMMING;


 case 128:
  ret = nand_set_ecc_soft_ops(chip);
  if (ret) {
   ret = -EINVAL;
   goto err_nand_manuf_cleanup;
  }
  break;

 case 129:
  if (!ecc->read_page || !ecc->write_page) {
   WARN(1, "No ECC functions supplied; on-die ECC not possible\n");
   ret = -EINVAL;
   goto err_nand_manuf_cleanup;
  }
  if (!ecc->read_oob)
   ecc->read_oob = nand_read_oob_std;
  if (!ecc->write_oob)
   ecc->write_oob = nand_write_oob_std;
  break;

 case 130:
  pr_warn("NAND_ECC_NONE selected by board driver. This is not recommended!\n");
  ecc->read_page = nand_read_page_raw;
  ecc->write_page = nand_write_page_raw;
  ecc->read_oob = nand_read_oob_std;
  ecc->read_page_raw = nand_read_page_raw;
  ecc->write_page_raw = nand_write_page_raw;
  ecc->write_oob = nand_write_oob_std;
  ecc->size = mtd->writesize;
  ecc->bytes = 0;
  ecc->strength = 0;
  break;

 default:
  WARN(1, "Invalid NAND_ECC_MODE %d\n", ecc->mode);
  ret = -EINVAL;
  goto err_nand_manuf_cleanup;
 }

 if (ecc->correct || ecc->calculate) {
  ecc->calc_buf = kmalloc(mtd->oobsize, GFP_KERNEL);
  ecc->code_buf = kmalloc(mtd->oobsize, GFP_KERNEL);
  if (!ecc->calc_buf || !ecc->code_buf) {
   ret = -ENOMEM;
   goto err_nand_manuf_cleanup;
  }
 }


 if (!ecc->read_oob_raw)
  ecc->read_oob_raw = ecc->read_oob;
 if (!ecc->write_oob_raw)
  ecc->write_oob_raw = ecc->write_oob;


 mtd->ecc_strength = ecc->strength;
 mtd->ecc_step_size = ecc->size;





 ecc->steps = mtd->writesize / ecc->size;
 if (ecc->steps * ecc->size != mtd->writesize) {
  WARN(1, "Invalid ECC parameters\n");
  ret = -EINVAL;
  goto err_nand_manuf_cleanup;
 }
 ecc->total = ecc->steps * ecc->bytes;
 if (ecc->total > mtd->oobsize) {
  WARN(1, "Total number of ECC bytes exceeded oobsize\n");
  ret = -EINVAL;
  goto err_nand_manuf_cleanup;
 }





 ret = mtd_ooblayout_count_freebytes(mtd);
 if (ret < 0)
  ret = 0;

 mtd->oobavail = ret;


 if (!nand_ecc_strength_good(chip))
  pr_warn("WARNING: %s: the ECC used on your system is too weak compared to the one required by the NAND chip\n",
   mtd->name);


 if (!(chip->options & NAND_NO_SUBPAGE_WRITE) && nand_is_slc(chip)) {
  switch (ecc->steps) {
  case 2:
   mtd->subpage_sft = 1;
   break;
  case 4:
  case 8:
  case 16:
   mtd->subpage_sft = 2;
   break;
  }
 }
 chip->subpagesize = mtd->writesize >> mtd->subpage_sft;


 chip->pagecache.page = -1;


 switch (ecc->mode) {
 case 128:
  if (chip->page_shift > 9)
   chip->options |= NAND_SUBPAGE_READ;
  break;

 default:
  break;
 }

 ret = nanddev_init(&chip->base, &rawnand_ops, mtd->owner);
 if (ret)
  goto err_nand_manuf_cleanup;


 if (chip->options & NAND_ROM)
  mtd->flags = MTD_CAP_ROM;


 mtd->_erase = nand_erase;
 mtd->_point = ((void*)0);
 mtd->_unpoint = ((void*)0);
 mtd->_panic_write = panic_nand_write;
 mtd->_read_oob = nand_read_oob;
 mtd->_write_oob = nand_write_oob;
 mtd->_sync = nand_sync;
 mtd->_lock = ((void*)0);
 mtd->_unlock = ((void*)0);
 mtd->_suspend = nand_suspend;
 mtd->_resume = nand_resume;
 mtd->_reboot = nand_shutdown;
 mtd->_block_isreserved = nand_block_isreserved;
 mtd->_block_isbad = nand_block_isbad;
 mtd->_block_markbad = nand_block_markbad;
 mtd->_max_bad_blocks = nanddev_mtd_max_bad_blocks;






 if (!mtd->bitflip_threshold)
  mtd->bitflip_threshold = DIV_ROUND_UP(mtd->ecc_strength * 3, 4);


 ret = nand_init_data_interface(chip);
 if (ret)
  goto err_nanddev_cleanup;


 for (i = 0; i < nanddev_ntargets(&chip->base); i++) {
  ret = nand_setup_data_interface(chip, i);
  if (ret)
   goto err_nanddev_cleanup;
 }


 if (chip->options & NAND_SKIP_BBTSCAN)
  return 0;


 ret = nand_create_bbt(chip);
 if (ret)
  goto err_nanddev_cleanup;

 return 0;


err_nanddev_cleanup:
 nanddev_cleanup(&chip->base);

err_nand_manuf_cleanup:
 nand_manufacturer_cleanup(chip);

err_free_buf:
 kfree(chip->data_buf);
 kfree(ecc->code_buf);
 kfree(ecc->calc_buf);

 return ret;
}
