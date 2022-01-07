
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_iscsi_params_update {int exp_stat_sn; int first_seq_length; int max_send_pdu_length; int max_recv_pdu_length; int max_seq_size; int update_flag; } ;
struct qed_iscsi_conn {int exp_stat_sn; int first_seq_length; int max_send_pdu_length; int max_recv_pdu_length; int max_seq_size; int update_flag; } ;
struct qed_hash_iscsi_con {struct qed_iscsi_conn* con; } ;
struct qed_dev {int dummy; } ;


 int DP_NOTICE (struct qed_dev*,char*,int ) ;
 int EINVAL ;
 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_SPQ_MODE_EBLOCK ;
 struct qed_hash_iscsi_con* qed_iscsi_get_hash (struct qed_dev*,int ) ;
 int qed_sp_iscsi_conn_update (int ,struct qed_iscsi_conn*,int ,int *) ;

__attribute__((used)) static int qed_iscsi_update_conn(struct qed_dev *cdev,
     u32 handle,
     struct qed_iscsi_params_update *conn_info)
{
 struct qed_hash_iscsi_con *hash_con;
 struct qed_iscsi_conn *con;

 hash_con = qed_iscsi_get_hash(cdev, handle);
 if (!hash_con) {
  DP_NOTICE(cdev, "Failed to find connection for handle %d\n",
     handle);
  return -EINVAL;
 }


 con = hash_con->con;
 con->update_flag = conn_info->update_flag;
 con->max_seq_size = conn_info->max_seq_size;
 con->max_recv_pdu_length = conn_info->max_recv_pdu_length;
 con->max_send_pdu_length = conn_info->max_send_pdu_length;
 con->first_seq_length = conn_info->first_seq_length;
 con->exp_stat_sn = conn_info->exp_stat_sn;

 return qed_sp_iscsi_conn_update(QED_AFFIN_HWFN(cdev), con,
     QED_SPQ_MODE_EBLOCK, ((void*)0));
}
