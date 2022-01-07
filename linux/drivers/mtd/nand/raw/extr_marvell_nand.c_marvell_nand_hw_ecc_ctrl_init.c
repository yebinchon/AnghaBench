
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nand_ecc_ctrl {scalar_t__ size; int strength; int write_oob; int write_oob_raw; int write_page; int write_page_raw; int read_oob; int read_oob_raw; int read_page; int read_page_raw; int steps; } ;
struct TYPE_5__ {int algo; } ;
struct nand_chip {TYPE_2__ ecc; int bbt_options; int controller; } ;
struct mtd_info {scalar_t__ writesize; int oobsize; } ;
struct marvell_nfc {int dev; TYPE_1__* caps; } ;
struct marvell_hw_ecc_layout {int writesize; scalar_t__ chunk; int strength; scalar_t__ data_bytes; int nchunks; } ;
struct TYPE_6__ {struct marvell_hw_ecc_layout const* layout; } ;
struct TYPE_4__ {int is_nfcv2; } ;


 int ARRAY_SIZE (struct marvell_hw_ecc_layout*) ;
 int ENOTSUPP ;
 scalar_t__ MAX_CHUNK_SIZE ;
 int NAND_BBT_NO_OOB_BBM ;
 int NAND_ECC_BCH ;
 int NAND_ECC_HAMMING ;
 int dev_err (int ,char*,...) ;
 int marvell_nand_ooblayout_ops ;
 int marvell_nfc_hw_ecc_bch_read_oob ;
 int marvell_nfc_hw_ecc_bch_read_oob_raw ;
 int marvell_nfc_hw_ecc_bch_read_page ;
 int marvell_nfc_hw_ecc_bch_read_page_raw ;
 int marvell_nfc_hw_ecc_bch_write_oob ;
 int marvell_nfc_hw_ecc_bch_write_oob_raw ;
 int marvell_nfc_hw_ecc_bch_write_page ;
 int marvell_nfc_hw_ecc_bch_write_page_raw ;
 int marvell_nfc_hw_ecc_hmg_read_oob_raw ;
 int marvell_nfc_hw_ecc_hmg_read_page ;
 int marvell_nfc_hw_ecc_hmg_read_page_raw ;
 int marvell_nfc_hw_ecc_hmg_write_oob_raw ;
 int marvell_nfc_hw_ecc_hmg_write_page ;
 int marvell_nfc_hw_ecc_hmg_write_page_raw ;
 struct marvell_hw_ecc_layout* marvell_nfc_layouts ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 TYPE_3__* to_marvell_nand (struct nand_chip*) ;
 struct marvell_nfc* to_marvell_nfc (int ) ;

__attribute__((used)) static int marvell_nand_hw_ecc_ctrl_init(struct mtd_info *mtd,
      struct nand_ecc_ctrl *ecc)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 const struct marvell_hw_ecc_layout *l;
 int i;

 if (!nfc->caps->is_nfcv2 &&
     (mtd->writesize + mtd->oobsize > MAX_CHUNK_SIZE)) {
  dev_err(nfc->dev,
   "NFCv1: writesize (%d) cannot be bigger than a chunk (%d)\n",
   mtd->writesize, MAX_CHUNK_SIZE - mtd->oobsize);
  return -ENOTSUPP;
 }

 to_marvell_nand(chip)->layout = ((void*)0);
 for (i = 0; i < ARRAY_SIZE(marvell_nfc_layouts); i++) {
  l = &marvell_nfc_layouts[i];
  if (mtd->writesize == l->writesize &&
      ecc->size == l->chunk && ecc->strength == l->strength) {
   to_marvell_nand(chip)->layout = l;
   break;
  }
 }

 if (!to_marvell_nand(chip)->layout ||
     (!nfc->caps->is_nfcv2 && ecc->strength > 1)) {
  dev_err(nfc->dev,
   "ECC strength %d at page size %d is not supported\n",
   ecc->strength, mtd->writesize);
  return -ENOTSUPP;
 }


 if (l->writesize == 2048 && l->strength == 8) {
  if (mtd->oobsize < 128) {
   dev_err(nfc->dev, "Requested layout needs at least 128 OOB bytes\n");
   return -ENOTSUPP;
  } else {
   chip->bbt_options |= NAND_BBT_NO_OOB_BBM;
  }
 }

 mtd_set_ooblayout(mtd, &marvell_nand_ooblayout_ops);
 ecc->steps = l->nchunks;
 ecc->size = l->data_bytes;

 if (ecc->strength == 1) {
  chip->ecc.algo = NAND_ECC_HAMMING;
  ecc->read_page_raw = marvell_nfc_hw_ecc_hmg_read_page_raw;
  ecc->read_page = marvell_nfc_hw_ecc_hmg_read_page;
  ecc->read_oob_raw = marvell_nfc_hw_ecc_hmg_read_oob_raw;
  ecc->read_oob = ecc->read_oob_raw;
  ecc->write_page_raw = marvell_nfc_hw_ecc_hmg_write_page_raw;
  ecc->write_page = marvell_nfc_hw_ecc_hmg_write_page;
  ecc->write_oob_raw = marvell_nfc_hw_ecc_hmg_write_oob_raw;
  ecc->write_oob = ecc->write_oob_raw;
 } else {
  chip->ecc.algo = NAND_ECC_BCH;
  ecc->strength = 16;
  ecc->read_page_raw = marvell_nfc_hw_ecc_bch_read_page_raw;
  ecc->read_page = marvell_nfc_hw_ecc_bch_read_page;
  ecc->read_oob_raw = marvell_nfc_hw_ecc_bch_read_oob_raw;
  ecc->read_oob = marvell_nfc_hw_ecc_bch_read_oob;
  ecc->write_page_raw = marvell_nfc_hw_ecc_bch_write_page_raw;
  ecc->write_page = marvell_nfc_hw_ecc_bch_write_page;
  ecc->write_oob_raw = marvell_nfc_hw_ecc_bch_write_oob_raw;
  ecc->write_oob = marvell_nfc_hw_ecc_bch_write_oob;
 }

 return 0;
}
