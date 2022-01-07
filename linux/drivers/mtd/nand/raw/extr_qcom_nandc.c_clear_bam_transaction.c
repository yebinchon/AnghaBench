
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_nand_controller {int max_cwperpage; TYPE_1__* props; struct bam_transaction* bam_txn; } ;
struct bam_transaction {int wait_second_completion; int txn_done; int data_sgl; int cmd_sgl; int * last_data_desc; scalar_t__ rx_sgl_start; scalar_t__ rx_sgl_pos; scalar_t__ tx_sgl_start; scalar_t__ tx_sgl_pos; scalar_t__ cmd_sgl_start; scalar_t__ cmd_sgl_pos; scalar_t__ bam_ce_start; scalar_t__ bam_ce_pos; } ;
struct TYPE_2__ {int is_bam; } ;


 int QPIC_PER_CW_CMD_SGL ;
 int QPIC_PER_CW_DATA_SGL ;
 int reinit_completion (int *) ;
 int sg_init_table (int ,int) ;

__attribute__((used)) static void clear_bam_transaction(struct qcom_nand_controller *nandc)
{
 struct bam_transaction *bam_txn = nandc->bam_txn;

 if (!nandc->props->is_bam)
  return;

 bam_txn->bam_ce_pos = 0;
 bam_txn->bam_ce_start = 0;
 bam_txn->cmd_sgl_pos = 0;
 bam_txn->cmd_sgl_start = 0;
 bam_txn->tx_sgl_pos = 0;
 bam_txn->tx_sgl_start = 0;
 bam_txn->rx_sgl_pos = 0;
 bam_txn->rx_sgl_start = 0;
 bam_txn->last_data_desc = ((void*)0);
 bam_txn->wait_second_completion = 0;

 sg_init_table(bam_txn->cmd_sgl, nandc->max_cwperpage *
        QPIC_PER_CW_CMD_SGL);
 sg_init_table(bam_txn->data_sgl, nandc->max_cwperpage *
        QPIC_PER_CW_DATA_SGL);

 reinit_completion(&bam_txn->txn_done);
}
