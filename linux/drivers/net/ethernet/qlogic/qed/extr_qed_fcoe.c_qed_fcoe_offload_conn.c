
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct qed_hash_fcoe_con {struct qed_fcoe_conn* con; } ;
struct TYPE_8__ {int addr_lo; int addr_mid; int addr_hi; } ;
struct TYPE_6__ {int addr_lo; int addr_mid; int addr_hi; } ;
struct qed_fcoe_params_offload {int* src_mac; int* dst_mac; TYPE_4__ d_id; TYPE_2__ s_id; int def_q_idx; int flags; int max_conc_seqs_c3; int vlan_tag; int rx_max_fc_pay_len; int rec_tov_timer_val; int e_d_tov_timer_val; int tx_max_fc_pay_len; int sq_next_page_addr; int sq_curr_page_addr; int sq_pbl_addr; } ;
struct TYPE_7__ {int addr_lo; int addr_mid; int addr_hi; } ;
struct TYPE_5__ {int addr_lo; int addr_mid; int addr_hi; } ;
struct qed_fcoe_conn {int src_mac_addr_hi; int src_mac_addr_mid; int src_mac_addr_lo; int dst_mac_addr_hi; int dst_mac_addr_mid; int dst_mac_addr_lo; TYPE_3__ d_id; TYPE_1__ s_id; int def_q_idx; int flags; int max_conc_seqs_c3; int vlan_tag; int rx_max_fc_pay_len; int rec_tov_timer_val; int e_d_tov_timer_val; int tx_max_fc_pay_len; int sq_next_page_addr; int sq_curr_page_addr; int sq_pbl_addr; } ;
struct qed_dev {int dummy; } ;


 int DP_NOTICE (struct qed_dev*,char*,int ) ;
 int EINVAL ;
 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_SPQ_MODE_EBLOCK ;
 struct qed_hash_fcoe_con* qed_fcoe_get_hash (struct qed_dev*,int ) ;
 int qed_sp_fcoe_conn_offload (int ,struct qed_fcoe_conn*,int ,int *) ;

__attribute__((used)) static int qed_fcoe_offload_conn(struct qed_dev *cdev,
     u32 handle,
     struct qed_fcoe_params_offload *conn_info)
{
 struct qed_hash_fcoe_con *hash_con;
 struct qed_fcoe_conn *con;

 hash_con = qed_fcoe_get_hash(cdev, handle);
 if (!hash_con) {
  DP_NOTICE(cdev, "Failed to find connection for handle %d\n",
     handle);
  return -EINVAL;
 }


 con = hash_con->con;

 con->sq_pbl_addr = conn_info->sq_pbl_addr;
 con->sq_curr_page_addr = conn_info->sq_curr_page_addr;
 con->sq_next_page_addr = conn_info->sq_next_page_addr;
 con->tx_max_fc_pay_len = conn_info->tx_max_fc_pay_len;
 con->e_d_tov_timer_val = conn_info->e_d_tov_timer_val;
 con->rec_tov_timer_val = conn_info->rec_tov_timer_val;
 con->rx_max_fc_pay_len = conn_info->rx_max_fc_pay_len;
 con->vlan_tag = conn_info->vlan_tag;
 con->max_conc_seqs_c3 = conn_info->max_conc_seqs_c3;
 con->flags = conn_info->flags;
 con->def_q_idx = conn_info->def_q_idx;

 con->src_mac_addr_hi = (conn_info->src_mac[5] << 8) |
     conn_info->src_mac[4];
 con->src_mac_addr_mid = (conn_info->src_mac[3] << 8) |
     conn_info->src_mac[2];
 con->src_mac_addr_lo = (conn_info->src_mac[1] << 8) |
     conn_info->src_mac[0];
 con->dst_mac_addr_hi = (conn_info->dst_mac[5] << 8) |
     conn_info->dst_mac[4];
 con->dst_mac_addr_mid = (conn_info->dst_mac[3] << 8) |
     conn_info->dst_mac[2];
 con->dst_mac_addr_lo = (conn_info->dst_mac[1] << 8) |
     conn_info->dst_mac[0];

 con->s_id.addr_hi = conn_info->s_id.addr_hi;
 con->s_id.addr_mid = conn_info->s_id.addr_mid;
 con->s_id.addr_lo = conn_info->s_id.addr_lo;
 con->d_id.addr_hi = conn_info->d_id.addr_hi;
 con->d_id.addr_mid = conn_info->d_id.addr_mid;
 con->d_id.addr_lo = conn_info->d_id.addr_lo;

 return qed_sp_fcoe_conn_offload(QED_AFFIN_HWFN(cdev), con,
     QED_SPQ_MODE_EBLOCK, ((void*)0));
}
