
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int tPROG_max; } ;
struct TYPE_6__ {TYPE_1__ sdr; } ;
struct TYPE_7__ {TYPE_2__ timings; } ;
struct nand_chip {TYPE_3__ data_interface; int * oob_poi; int cur_cs; } ;
struct mtd_info {int oobsize; } ;
struct marvell_hw_ecc_layout {int data_bytes; int spare_bytes; int nchunks; int full_chunk_cnt; int last_data_bytes; int last_spare_bytes; } ;
struct TYPE_8__ {struct marvell_hw_ecc_layout* layout; } ;


 int PSEC_TO_MSEC (int ) ;
 int marvell_nfc_disable_hw_ecc (struct nand_chip*) ;
 int marvell_nfc_enable_hw_ecc (struct nand_chip*) ;
 int marvell_nfc_hw_ecc_bch_write_chunk (struct nand_chip*,int,int const*,int,int const*,int,int) ;
 int marvell_nfc_select_target (struct nand_chip*,int ) ;
 int marvell_nfc_wait_ndrun (struct nand_chip*) ;
 int marvell_nfc_wait_op (struct nand_chip*,int ) ;
 int memset (int *,int,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 TYPE_4__* to_marvell_nand (struct nand_chip*) ;

__attribute__((used)) static int marvell_nfc_hw_ecc_bch_write_page(struct nand_chip *chip,
          const u8 *buf,
          int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 const struct marvell_hw_ecc_layout *lt = to_marvell_nand(chip)->layout;
 const u8 *data = buf;
 const u8 *spare = chip->oob_poi;
 int data_len = lt->data_bytes;
 int spare_len = lt->spare_bytes;
 int chunk, ret;

 marvell_nfc_select_target(chip, chip->cur_cs);


 if (!oob_required)
  memset(chip->oob_poi, 0xFF, mtd->oobsize);

 marvell_nfc_enable_hw_ecc(chip);

 for (chunk = 0; chunk < lt->nchunks; chunk++) {
  if (chunk >= lt->full_chunk_cnt) {
   data_len = lt->last_data_bytes;
   spare_len = lt->last_spare_bytes;
  }

  marvell_nfc_hw_ecc_bch_write_chunk(chip, chunk, data, data_len,
         spare, spare_len, page);
  data += data_len;
  spare += spare_len;







  marvell_nfc_wait_ndrun(chip);
 }

 ret = marvell_nfc_wait_op(chip,
      PSEC_TO_MSEC(chip->data_interface.timings.sdr.tPROG_max));

 marvell_nfc_disable_hw_ecc(chip);

 if (ret)
  return ret;

 return 0;
}
