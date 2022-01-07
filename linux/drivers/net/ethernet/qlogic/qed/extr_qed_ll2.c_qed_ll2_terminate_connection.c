
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct qed_ptt {int dummy; } ;
struct TYPE_7__ {scalar_t__ conn_type; } ;
struct TYPE_6__ {int b_cb_registered; int rx_sb_index; } ;
struct TYPE_5__ {int b_cb_registered; int tx_sb_index; } ;
struct qed_ll2_info {TYPE_3__ input; TYPE_2__ rx_queue; TYPE_1__ tx_queue; } ;
struct qed_hwfn {TYPE_4__* cdev; int p_ooo_info; } ;
struct TYPE_8__ {int mf_bits; } ;


 int EAGAIN ;
 int EINVAL ;
 int ETH_P_FCOE ;
 int ETH_P_FIP ;
 scalar_t__ QED_LL2_RX_REGISTERED (struct qed_ll2_info*) ;
 scalar_t__ QED_LL2_TX_REGISTERED (struct qed_ll2_info*) ;
 scalar_t__ QED_LL2_TYPE_FCOE ;
 scalar_t__ QED_LL2_TYPE_OOO ;
 int QED_LLH_FILTER_ETHERTYPE ;
 int QED_MF_UFP_SPECIFIC ;
 int qed_int_unregister_cb (struct qed_hwfn*,int ) ;
 struct qed_ll2_info* qed_ll2_handle_sanity_lock (struct qed_hwfn*,int ) ;
 int qed_ll2_rxq_flush (struct qed_hwfn*,int ) ;
 int qed_ll2_txq_flush (struct qed_hwfn*,int ) ;
 int qed_llh_remove_protocol_filter (TYPE_4__*,int ,int ,int ,int ) ;
 int qed_ooo_release_all_isles (struct qed_hwfn*,int ) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_sp_ll2_rx_queue_stop (struct qed_hwfn*,struct qed_ll2_info*) ;
 int qed_sp_ll2_tx_queue_stop (struct qed_hwfn*,struct qed_ll2_info*) ;
 int smp_wmb () ;
 int test_bit (int ,int *) ;

int qed_ll2_terminate_connection(void *cxt, u8 connection_handle)
{
 struct qed_hwfn *p_hwfn = cxt;
 struct qed_ll2_info *p_ll2_conn = ((void*)0);
 int rc = -EINVAL;
 struct qed_ptt *p_ptt;

 p_ptt = qed_ptt_acquire(p_hwfn);
 if (!p_ptt)
  return -EAGAIN;

 p_ll2_conn = qed_ll2_handle_sanity_lock(p_hwfn, connection_handle);
 if (!p_ll2_conn) {
  rc = -EINVAL;
  goto out;
 }


 if (QED_LL2_TX_REGISTERED(p_ll2_conn)) {
  p_ll2_conn->tx_queue.b_cb_registered = 0;
  smp_wmb();
  rc = qed_sp_ll2_tx_queue_stop(p_hwfn, p_ll2_conn);
  if (rc)
   goto out;

  qed_ll2_txq_flush(p_hwfn, connection_handle);
  qed_int_unregister_cb(p_hwfn, p_ll2_conn->tx_queue.tx_sb_index);
 }

 if (QED_LL2_RX_REGISTERED(p_ll2_conn)) {
  p_ll2_conn->rx_queue.b_cb_registered = 0;
  smp_wmb();
  rc = qed_sp_ll2_rx_queue_stop(p_hwfn, p_ll2_conn);
  if (rc)
   goto out;

  qed_ll2_rxq_flush(p_hwfn, connection_handle);
  qed_int_unregister_cb(p_hwfn, p_ll2_conn->rx_queue.rx_sb_index);
 }

 if (p_ll2_conn->input.conn_type == QED_LL2_TYPE_OOO)
  qed_ooo_release_all_isles(p_hwfn, p_hwfn->p_ooo_info);

 if (p_ll2_conn->input.conn_type == QED_LL2_TYPE_FCOE) {
  if (!test_bit(QED_MF_UFP_SPECIFIC, &p_hwfn->cdev->mf_bits))
   qed_llh_remove_protocol_filter(p_hwfn->cdev, 0,
             QED_LLH_FILTER_ETHERTYPE,
             ETH_P_FCOE, 0);
  qed_llh_remove_protocol_filter(p_hwfn->cdev, 0,
            QED_LLH_FILTER_ETHERTYPE,
            ETH_P_FIP, 0);
 }

out:
 qed_ptt_release(p_hwfn, p_ptt);
 return rc;
}
