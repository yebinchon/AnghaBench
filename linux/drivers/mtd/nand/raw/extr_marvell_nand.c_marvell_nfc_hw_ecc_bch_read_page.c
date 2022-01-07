
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nand_chip {int * oob_poi; int cur_cs; } ;
struct mtd_info {int oobsize; } ;
struct marvell_hw_ecc_layout {int data_bytes; int spare_bytes; int nchunks; int full_chunk_cnt; int last_data_bytes; int last_spare_bytes; int ecc_bytes; int last_ecc_bytes; int writesize; int strength; } ;
struct TYPE_2__ {struct marvell_hw_ecc_layout* layout; } ;


 int BIT (int) ;
 int marvell_nfc_check_empty_chunk (struct nand_chip*,int *,int,int *,int,int *,int,int*) ;
 int marvell_nfc_disable_hw_ecc (struct nand_chip*) ;
 int marvell_nfc_enable_hw_ecc (struct nand_chip*) ;
 int marvell_nfc_hw_ecc_bch_read_chunk (struct nand_chip*,int,int *,int,int *,int,int) ;
 int marvell_nfc_hw_ecc_correct (struct nand_chip*,int*) ;
 int marvell_nfc_select_target (struct nand_chip*,int ) ;
 int memset (int *,int,int ) ;
 int nand_change_read_column_op (struct nand_chip*,int,int *,int,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 TYPE_1__* to_marvell_nand (struct nand_chip*) ;

__attribute__((used)) static int marvell_nfc_hw_ecc_bch_read_page(struct nand_chip *chip,
         u8 *buf, int oob_required,
         int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 const struct marvell_hw_ecc_layout *lt = to_marvell_nand(chip)->layout;
 int data_len = lt->data_bytes, spare_len = lt->spare_bytes;
 u8 *data = buf, *spare = chip->oob_poi;
 int max_bitflips = 0;
 u32 failure_mask = 0;
 int chunk, ret;

 marvell_nfc_select_target(chip, chip->cur_cs);






 if (oob_required)
  memset(chip->oob_poi, 0xFF, mtd->oobsize);

 marvell_nfc_enable_hw_ecc(chip);

 for (chunk = 0; chunk < lt->nchunks; chunk++) {

  if (chunk >= lt->full_chunk_cnt) {
   data_len = lt->last_data_bytes;
   spare_len = lt->last_spare_bytes;
  }


  marvell_nfc_hw_ecc_bch_read_chunk(chip, chunk, data, data_len,
        spare, spare_len, page);
  ret = marvell_nfc_hw_ecc_correct(chip, &max_bitflips);
  if (ret)
   failure_mask |= BIT(chunk);

  data += data_len;
  spare += spare_len;
 }

 marvell_nfc_disable_hw_ecc(chip);

 if (!failure_mask)
  return max_bitflips;
 for (chunk = 0; chunk < lt->nchunks; chunk++) {
  int data_off_in_page, spare_off_in_page, ecc_off_in_page;
  int data_off, spare_off, ecc_off;
  int data_len, spare_len, ecc_len;


  if (!(failure_mask & BIT(chunk)))
   continue;

  data_off_in_page = chunk * (lt->data_bytes + lt->spare_bytes +
         lt->ecc_bytes);
  spare_off_in_page = data_off_in_page +
   (chunk < lt->full_chunk_cnt ? lt->data_bytes :
            lt->last_data_bytes);
  ecc_off_in_page = spare_off_in_page +
   (chunk < lt->full_chunk_cnt ? lt->spare_bytes :
            lt->last_spare_bytes);

  data_off = chunk * lt->data_bytes;
  spare_off = chunk * lt->spare_bytes;
  ecc_off = (lt->full_chunk_cnt * lt->spare_bytes) +
     lt->last_spare_bytes +
     (chunk * (lt->ecc_bytes + 2));

  data_len = chunk < lt->full_chunk_cnt ? lt->data_bytes :
       lt->last_data_bytes;
  spare_len = chunk < lt->full_chunk_cnt ? lt->spare_bytes :
        lt->last_spare_bytes;
  ecc_len = chunk < lt->full_chunk_cnt ? lt->ecc_bytes :
             lt->last_ecc_bytes;







  if (lt->writesize == 2048 && lt->strength == 8) {
   nand_change_read_column_op(chip, data_off_in_page,
         buf + data_off, data_len,
         0);
   nand_change_read_column_op(chip, spare_off_in_page,
         chip->oob_poi + spare_off, spare_len,
         0);
  }

  nand_change_read_column_op(chip, ecc_off_in_page,
        chip->oob_poi + ecc_off, ecc_len,
        0);


  marvell_nfc_check_empty_chunk(chip, buf + data_off, data_len,
           chip->oob_poi + spare_off, spare_len,
           chip->oob_poi + ecc_off, ecc_len,
           &max_bitflips);
 }

 return max_bitflips;
}
