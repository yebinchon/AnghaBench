
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_nand_controller {int tx_chan; struct bam_transaction* bam_txn; } ;
struct bam_transaction {size_t rx_sgl_pos; size_t tx_sgl_pos; int * data_sgl; } ;


 int DMA_PREP_INTERRUPT ;
 unsigned int NAND_BAM_NO_EOT ;
 int prepare_bam_async_desc (struct qcom_nand_controller*,int ,int ) ;
 int sg_set_buf (int *,void const*,int) ;

__attribute__((used)) static int prep_bam_dma_desc_data(struct qcom_nand_controller *nandc, bool read,
      const void *vaddr,
      int size, unsigned int flags)
{
 int ret;
 struct bam_transaction *bam_txn = nandc->bam_txn;

 if (read) {
  sg_set_buf(&bam_txn->data_sgl[bam_txn->rx_sgl_pos],
      vaddr, size);
  bam_txn->rx_sgl_pos++;
 } else {
  sg_set_buf(&bam_txn->data_sgl[bam_txn->tx_sgl_pos],
      vaddr, size);
  bam_txn->tx_sgl_pos++;





  if (!(flags & NAND_BAM_NO_EOT)) {
   ret = prepare_bam_async_desc(nandc, nandc->tx_chan,
           DMA_PREP_INTERRUPT);
   if (ret)
    return ret;
  }
 }

 return 0;
}
