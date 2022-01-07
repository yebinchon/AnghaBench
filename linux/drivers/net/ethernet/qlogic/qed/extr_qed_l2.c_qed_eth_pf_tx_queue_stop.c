
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_spq_entry {int dummy; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct qed_queue_cid {int opaque_fid; int cid; } ;
struct qed_hwfn {int dummy; } ;
typedef int init_data ;


 int ETH_RAMROD_TX_QUEUE_STOP ;
 int PROTOCOLID_ETH ;
 int QED_SPQ_MODE_EBLOCK ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int
qed_eth_pf_tx_queue_stop(struct qed_hwfn *p_hwfn, struct qed_queue_cid *p_cid)
{
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc;

 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = p_cid->cid;
 init_data.opaque_fid = p_cid->opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     ETH_RAMROD_TX_QUEUE_STOP,
     PROTOCOLID_ETH, &init_data);
 if (rc)
  return rc;

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
