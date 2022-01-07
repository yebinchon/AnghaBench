
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_spq_entry {int dummy; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct qed_ll2_tx_queue {int db_msg; int doorbell_addr; } ;
struct qed_ll2_info {int cid; struct qed_ll2_tx_queue tx_queue; } ;
struct TYPE_2__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; int cdev; } ;
typedef int init_data ;


 int CORE_RAMROD_TX_QUEUE_STOP ;
 int EINVAL ;
 int PROTOCOLID_CORE ;
 int QED_SPQ_MODE_EBLOCK ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_db_recovery_del (int ,int ,int *) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int qed_sp_ll2_tx_queue_stop(struct qed_hwfn *p_hwfn,
        struct qed_ll2_info *p_ll2_conn)
{
 struct qed_ll2_tx_queue *p_tx = &p_ll2_conn->tx_queue;
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc = -EINVAL;
 qed_db_recovery_del(p_hwfn->cdev, p_tx->doorbell_addr, &p_tx->db_msg);


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = p_ll2_conn->cid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     CORE_RAMROD_TX_QUEUE_STOP,
     PROTOCOLID_CORE, &init_data);
 if (rc)
  return rc;

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
