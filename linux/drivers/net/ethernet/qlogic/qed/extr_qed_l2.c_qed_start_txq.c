
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qed_txq_start_ret_params {int dummy; } ;
struct qed_queue_start_common_params {int queue_id; TYPE_2__* p_sb; int vport_id; int tc; int stats_id; } ;
struct TYPE_3__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;
struct qed_dev {int num_hwfns; struct qed_hwfn* hwfns; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int igu_sb_id; } ;


 int DP_ERR (struct qed_dev*,char*,int) ;
 int DP_VERBOSE (struct qed_dev*,int,char*,int,int,int ,int ) ;
 int NETIF_MSG_IFUP ;
 int QED_MSG_SPQ ;
 int qed_eth_tx_queue_start (struct qed_hwfn*,int ,struct qed_queue_start_common_params*,int ,int ,int ,struct qed_txq_start_ret_params*) ;

__attribute__((used)) static int qed_start_txq(struct qed_dev *cdev,
    u8 rss_num,
    struct qed_queue_start_common_params *p_params,
    dma_addr_t pbl_addr,
    u16 pbl_size,
    struct qed_txq_start_ret_params *ret_params)
{
 struct qed_hwfn *p_hwfn;
 int rc, hwfn_index;

 hwfn_index = rss_num % cdev->num_hwfns;
 p_hwfn = &cdev->hwfns[hwfn_index];
 p_params->queue_id = p_params->queue_id / cdev->num_hwfns;
 p_params->stats_id = p_params->vport_id;

 rc = qed_eth_tx_queue_start(p_hwfn,
        p_hwfn->hw_info.opaque_fid,
        p_params, p_params->tc,
        pbl_addr, pbl_size, ret_params);

 if (rc) {
  DP_ERR(cdev, "Failed to start TXQ#%d\n", p_params->queue_id);
  return rc;
 }

 DP_VERBOSE(cdev, (QED_MSG_SPQ | NETIF_MSG_IFUP),
     "Started TX-Q %d [rss_num %d] on V-PORT %d and SB igu %d\n",
     p_params->queue_id, rss_num, p_params->vport_id,
     p_params->p_sb->igu_sb_id);

 return 0;
}
