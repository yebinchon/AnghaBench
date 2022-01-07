
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_ecc_ctrl {scalar_t__ mode; int algo; int size; int bytes; int strength; int options; int priv; void* write_oob; void* read_oob; void* write_page_raw; void* read_page_raw; void* write_page; void* read_subpage; void* read_page; int correct; int calculate; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int oobsize; int writesize; int * ooblayout; } ;


 int CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC ;
 int EINVAL ;
 int IS_ENABLED (int ) ;


 int NAND_ECC_MAXIMIZE ;
 scalar_t__ NAND_ECC_SOFT ;
 int NAND_ECC_SOFT_HAMMING_SM_ORDER ;
 int WARN (int,char*) ;
 scalar_t__ WARN_ON (int) ;
 int fls (int) ;
 int mtd_nand_has_bch () ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 int nand_bch_calculate_ecc ;
 int nand_bch_correct_data ;
 int nand_bch_init (struct mtd_info*) ;
 int nand_calculate_ecc ;
 int nand_correct_data ;
 int nand_ooblayout_lp_ops ;
 void* nand_read_oob_std ;
 void* nand_read_page_raw ;
 void* nand_read_page_swecc ;
 void* nand_read_subpage ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 void* nand_write_oob_std ;
 void* nand_write_page_raw ;
 void* nand_write_page_swecc ;

__attribute__((used)) static int nand_set_ecc_soft_ops(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;

 if (WARN_ON(ecc->mode != NAND_ECC_SOFT))
  return -EINVAL;

 switch (ecc->algo) {
 case 128:
  ecc->calculate = nand_calculate_ecc;
  ecc->correct = nand_correct_data;
  ecc->read_page = nand_read_page_swecc;
  ecc->read_subpage = nand_read_subpage;
  ecc->write_page = nand_write_page_swecc;
  ecc->read_page_raw = nand_read_page_raw;
  ecc->write_page_raw = nand_write_page_raw;
  ecc->read_oob = nand_read_oob_std;
  ecc->write_oob = nand_write_oob_std;
  if (!ecc->size)
   ecc->size = 256;
  ecc->bytes = 3;
  ecc->strength = 1;

  if (IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC))
   ecc->options |= NAND_ECC_SOFT_HAMMING_SM_ORDER;

  return 0;
 case 129:
  if (!mtd_nand_has_bch()) {
   WARN(1, "CONFIG_MTD_NAND_ECC_SW_BCH not enabled\n");
   return -EINVAL;
  }
  ecc->calculate = nand_bch_calculate_ecc;
  ecc->correct = nand_bch_correct_data;
  ecc->read_page = nand_read_page_swecc;
  ecc->read_subpage = nand_read_subpage;
  ecc->write_page = nand_write_page_swecc;
  ecc->read_page_raw = nand_read_page_raw;
  ecc->write_page_raw = nand_write_page_raw;
  ecc->read_oob = nand_read_oob_std;
  ecc->write_oob = nand_write_oob_std;






  if (!ecc->size && (mtd->oobsize >= 64)) {
   ecc->size = 512;
   ecc->strength = 4;
  }





  if (!mtd->ooblayout) {

   if (mtd->oobsize < 64) {
    WARN(1, "OOB layout is required when using software BCH on small pages\n");
    return -EINVAL;
   }

   mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);

  }






  if (mtd->ooblayout == &nand_ooblayout_lp_ops &&
      ecc->options & NAND_ECC_MAXIMIZE) {
   int steps, bytes;


   ecc->size = 1024;
   steps = mtd->writesize / ecc->size;


   bytes = (mtd->oobsize - 2) / steps;
   ecc->strength = bytes * 8 / fls(8 * ecc->size);
  }


  ecc->bytes = 0;
  ecc->priv = nand_bch_init(mtd);
  if (!ecc->priv) {
   WARN(1, "BCH ECC initialization failed!\n");
   return -EINVAL;
  }
  return 0;
 default:
  WARN(1, "Unsupported ECC algorithm!\n");
  return -EINVAL;
 }
}
