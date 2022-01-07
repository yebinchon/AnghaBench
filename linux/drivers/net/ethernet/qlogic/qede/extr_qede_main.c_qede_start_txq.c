
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct TYPE_9__ {int agg_flags; int params; } ;
struct TYPE_12__ {TYPE_3__ data; } ;
struct qede_tx_queue {TYPE_6__ tx_db; int doorbell_addr; int * hw_cons_ptr; int handle; int index; int cos; scalar_t__ is_xdp; int tx_pbl; } ;
struct qede_fastpath {TYPE_2__* sb_info; } ;
struct qede_dev {int cdev; TYPE_5__* ops; } ;
struct qed_txq_start_ret_params {size_t sb_idx; int p_handle; int p_doorbell; int tc; TYPE_2__* p_sb; int queue_id; } ;
struct qed_queue_start_common_params {size_t sb_idx; int p_handle; int p_doorbell; int tc; TYPE_2__* p_sb; int queue_id; } ;
typedef int ret_params ;
typedef int params ;
typedef int dma_addr_t ;
struct TYPE_11__ {int (* q_tx_start ) (int ,int ,struct qed_txq_start_ret_params*,int ,int ,struct qed_txq_start_ret_params*) ;TYPE_4__* common; } ;
struct TYPE_10__ {int (* db_recovery_add ) (int ,int ,TYPE_6__*,int ,int ) ;} ;
struct TYPE_8__ {TYPE_1__* sb_virt; } ;
struct TYPE_7__ {int * pi_array; } ;


 int DB_AGG_CMD_SET ;
 int DB_DEST_XCM ;
 int DB_REC_KERNEL ;
 int DB_REC_WIDTH_32B ;
 int DP_ERR (struct qede_dev*,char*,int ,int) ;
 int DQ_XCM_ETH_DQ_CF_CMD ;
 int DQ_XCM_ETH_TX_BD_PROD_CMD ;
 int ETH_DB_DATA_AGG_CMD ;
 int ETH_DB_DATA_AGG_VAL_SEL ;
 int ETH_DB_DATA_DEST ;
 int QEDE_TXQ_XDP_TO_IDX (struct qede_dev*,struct qede_tx_queue*) ;
 int SET_FIELD (int ,int ,int ) ;
 int memset (struct qed_txq_start_ret_params*,int ,int) ;
 int qed_chain_get_page_cnt (int *) ;
 int qed_chain_get_pbl_phys (int *) ;
 int stub1 (int ,int ,struct qed_txq_start_ret_params*,int ,int ,struct qed_txq_start_ret_params*) ;
 int stub2 (int ,int ,TYPE_6__*,int ,int ) ;

__attribute__((used)) static int qede_start_txq(struct qede_dev *edev,
     struct qede_fastpath *fp,
     struct qede_tx_queue *txq, u8 rss_id, u16 sb_idx)
{
 dma_addr_t phys_table = qed_chain_get_pbl_phys(&txq->tx_pbl);
 u32 page_cnt = qed_chain_get_page_cnt(&txq->tx_pbl);
 struct qed_queue_start_common_params params;
 struct qed_txq_start_ret_params ret_params;
 int rc;

 memset(&params, 0, sizeof(params));
 memset(&ret_params, 0, sizeof(ret_params));




 if (txq->is_xdp)
  params.queue_id = QEDE_TXQ_XDP_TO_IDX(edev, txq);
 else
  params.queue_id = txq->index;

 params.p_sb = fp->sb_info;
 params.sb_idx = sb_idx;
 params.tc = txq->cos;

 rc = edev->ops->q_tx_start(edev->cdev, rss_id, &params, phys_table,
       page_cnt, &ret_params);
 if (rc) {
  DP_ERR(edev, "Start TXQ #%d failed %d\n", txq->index, rc);
  return rc;
 }

 txq->doorbell_addr = ret_params.p_doorbell;
 txq->handle = ret_params.p_handle;


 txq->hw_cons_ptr = &fp->sb_info->sb_virt->pi_array[sb_idx];


 SET_FIELD(txq->tx_db.data.params, ETH_DB_DATA_DEST, DB_DEST_XCM);
 SET_FIELD(txq->tx_db.data.params, ETH_DB_DATA_AGG_CMD, DB_AGG_CMD_SET);
 SET_FIELD(txq->tx_db.data.params, ETH_DB_DATA_AGG_VAL_SEL,
    DQ_XCM_ETH_TX_BD_PROD_CMD);
 txq->tx_db.data.agg_flags = DQ_XCM_ETH_DQ_CF_CMD;


 rc = edev->ops->common->db_recovery_add(edev->cdev, txq->doorbell_addr,
      &txq->tx_db, DB_REC_WIDTH_32B,
      DB_REC_KERNEL);

 return rc;
}
