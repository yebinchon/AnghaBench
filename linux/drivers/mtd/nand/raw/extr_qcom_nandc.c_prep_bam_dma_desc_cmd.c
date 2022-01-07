
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_nand_controller {int cmd_chan; struct bam_transaction* bam_txn; } ;
struct bam_transaction {size_t bam_ce_pos; size_t bam_ce_start; size_t cmd_sgl_pos; int * cmd_sgl; struct bam_cmd_element* bam_ce; } ;
struct bam_cmd_element {int dummy; } ;
typedef int __le32 ;


 int BAM_READ_COMMAND ;
 int BAM_WRITE_COMMAND ;
 int DMA_PREP_CMD ;
 int DMA_PREP_FENCE ;
 unsigned int NAND_BAM_NEXT_SGL ;
 unsigned int NAND_BAM_NWD ;
 int bam_prep_ce (struct bam_cmd_element*,int ,int ,int ) ;
 int bam_prep_ce_le32 (struct bam_cmd_element*,int ,int ,int ) ;
 int nandc_reg_phys (struct qcom_nand_controller*,int) ;
 int prepare_bam_async_desc (struct qcom_nand_controller*,int ,int) ;
 int reg_buf_dma_addr (struct qcom_nand_controller*,int *) ;
 int sg_set_buf (int *,struct bam_cmd_element*,int) ;

__attribute__((used)) static int prep_bam_dma_desc_cmd(struct qcom_nand_controller *nandc, bool read,
     int reg_off, const void *vaddr,
     int size, unsigned int flags)
{
 int bam_ce_size;
 int i, ret;
 struct bam_cmd_element *bam_ce_buffer;
 struct bam_transaction *bam_txn = nandc->bam_txn;

 bam_ce_buffer = &bam_txn->bam_ce[bam_txn->bam_ce_pos];


 for (i = 0; i < size; i++) {
  if (read)
   bam_prep_ce(&bam_ce_buffer[i],
        nandc_reg_phys(nandc, reg_off + 4 * i),
        BAM_READ_COMMAND,
        reg_buf_dma_addr(nandc,
           (__le32 *)vaddr + i));
  else
   bam_prep_ce_le32(&bam_ce_buffer[i],
      nandc_reg_phys(nandc, reg_off + 4 * i),
      BAM_WRITE_COMMAND,
      *((__le32 *)vaddr + i));
 }

 bam_txn->bam_ce_pos += size;


 if (flags & NAND_BAM_NEXT_SGL) {
  bam_ce_buffer = &bam_txn->bam_ce[bam_txn->bam_ce_start];
  bam_ce_size = (bam_txn->bam_ce_pos -
    bam_txn->bam_ce_start) *
    sizeof(struct bam_cmd_element);
  sg_set_buf(&bam_txn->cmd_sgl[bam_txn->cmd_sgl_pos],
      bam_ce_buffer, bam_ce_size);
  bam_txn->cmd_sgl_pos++;
  bam_txn->bam_ce_start = bam_txn->bam_ce_pos;

  if (flags & NAND_BAM_NWD) {
   ret = prepare_bam_async_desc(nandc, nandc->cmd_chan,
           DMA_PREP_FENCE |
           DMA_PREP_CMD);
   if (ret)
    return ret;
  }
 }

 return 0;
}
