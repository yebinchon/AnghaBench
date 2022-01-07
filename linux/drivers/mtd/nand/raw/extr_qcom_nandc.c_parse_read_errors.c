
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct read_stats {int erased_cw; int buffer; int flash; } ;
struct nand_ecc_ctrl {int steps; int size; scalar_t__ bytes; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct qcom_nand_host {int cw_data; scalar_t__ bch_enabled; struct nand_chip chip; } ;
struct qcom_nand_controller {scalar_t__ reg_read_buf; } ;
struct TYPE_2__ {unsigned int corrected; } ;
struct mtd_info {TYPE_1__ ecc_stats; } ;


 unsigned int BIT (int) ;
 int BS_CORRECTABLE_ERR_MSK ;
 int BS_UNCORRECTABLE_BIT ;
 int EIO ;
 int ERASED_CW ;
 int FS_MPU_ERR ;
 int FS_OP_ERR ;
 int check_for_erased_page (struct qcom_nand_host*,int *,int *,unsigned int,int,unsigned int) ;
 int erased_chunk_check_and_fixup (int *,int) ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;
 int le32_to_cpu (int ) ;
 unsigned int max (unsigned int,unsigned int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nandc_read_buffer_sync (struct qcom_nand_controller*,int) ;

__attribute__((used)) static int parse_read_errors(struct qcom_nand_host *host, u8 *data_buf,
        u8 *oob_buf, int page)
{
 struct nand_chip *chip = &host->chip;
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;
 unsigned int max_bitflips = 0, uncorrectable_cws = 0;
 struct read_stats *buf;
 bool flash_op_err = 0, erased;
 int i;
 u8 *data_buf_start = data_buf, *oob_buf_start = oob_buf;

 buf = (struct read_stats *)nandc->reg_read_buf;
 nandc_read_buffer_sync(nandc, 1);

 for (i = 0; i < ecc->steps; i++, buf++) {
  u32 flash, buffer, erased_cw;
  int data_len, oob_len;

  if (i == (ecc->steps - 1)) {
   data_len = ecc->size - ((ecc->steps - 1) << 2);
   oob_len = ecc->steps << 2;
  } else {
   data_len = host->cw_data;
   oob_len = 0;
  }

  flash = le32_to_cpu(buf->flash);
  buffer = le32_to_cpu(buf->buffer);
  erased_cw = le32_to_cpu(buf->erased_cw);
  if ((flash & FS_OP_ERR) && (buffer & BS_UNCORRECTABLE_BIT)) {




   if (host->bch_enabled) {
    erased = (erased_cw & ERASED_CW) == ERASED_CW ?
      1 : 0;






   } else if (data_buf) {
    erased = erased_chunk_check_and_fixup(data_buf,
              data_len);
   } else {
    erased = 0;
   }

   if (!erased)
    uncorrectable_cws |= BIT(i);






  } else if (flash & (FS_OP_ERR | FS_MPU_ERR)) {
   flash_op_err = 1;




  } else {
   unsigned int stat;

   stat = buffer & BS_CORRECTABLE_ERR_MSK;
   mtd->ecc_stats.corrected += stat;
   max_bitflips = max(max_bitflips, stat);
  }

  if (data_buf)
   data_buf += data_len;
  if (oob_buf)
   oob_buf += oob_len + ecc->bytes;
 }

 if (flash_op_err)
  return -EIO;

 if (!uncorrectable_cws)
  return max_bitflips;

 return check_for_erased_page(host, data_buf_start, oob_buf_start,
         uncorrectable_cws, page,
         max_bitflips);
}
