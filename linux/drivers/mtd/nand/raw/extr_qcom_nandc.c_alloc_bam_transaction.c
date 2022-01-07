
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_nand_controller {unsigned int max_cwperpage; int dev; } ;
struct bam_transaction {int txn_done; void* data_sgl; void* cmd_sgl; void* bam_ce; } ;


 int GFP_KERNEL ;
 int QPIC_PER_CW_CMD_ELEMENTS ;
 int QPIC_PER_CW_CMD_SGL ;
 int QPIC_PER_CW_DATA_SGL ;
 void* devm_kzalloc (int ,size_t,int ) ;
 int init_completion (int *) ;

__attribute__((used)) static struct bam_transaction *
alloc_bam_transaction(struct qcom_nand_controller *nandc)
{
 struct bam_transaction *bam_txn;
 size_t bam_txn_size;
 unsigned int num_cw = nandc->max_cwperpage;
 void *bam_txn_buf;

 bam_txn_size =
  sizeof(*bam_txn) + num_cw *
  ((sizeof(*bam_txn->bam_ce) * QPIC_PER_CW_CMD_ELEMENTS) +
  (sizeof(*bam_txn->cmd_sgl) * QPIC_PER_CW_CMD_SGL) +
  (sizeof(*bam_txn->data_sgl) * QPIC_PER_CW_DATA_SGL));

 bam_txn_buf = devm_kzalloc(nandc->dev, bam_txn_size, GFP_KERNEL);
 if (!bam_txn_buf)
  return ((void*)0);

 bam_txn = bam_txn_buf;
 bam_txn_buf += sizeof(*bam_txn);

 bam_txn->bam_ce = bam_txn_buf;
 bam_txn_buf +=
  sizeof(*bam_txn->bam_ce) * QPIC_PER_CW_CMD_ELEMENTS * num_cw;

 bam_txn->cmd_sgl = bam_txn_buf;
 bam_txn_buf +=
  sizeof(*bam_txn->cmd_sgl) * QPIC_PER_CW_CMD_SGL * num_cw;

 bam_txn->data_sgl = bam_txn_buf;

 init_completion(&bam_txn->txn_done);

 return bam_txn;
}
