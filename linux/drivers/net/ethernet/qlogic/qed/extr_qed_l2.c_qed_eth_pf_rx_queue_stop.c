
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_queue_stop_ramrod_data {int complete_cqe_flg; int complete_event_flg; int rx_queue_id; int vport_id; } ;
struct TYPE_3__ {struct rx_queue_stop_ramrod_data rx_queue_stop; } ;
struct qed_spq_entry {TYPE_1__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct TYPE_4__ {int queue_id; int vport_id; } ;
struct qed_queue_cid {scalar_t__ vfid; TYPE_2__ abs; int opaque_fid; int cid; } ;
struct qed_hwfn {int dummy; } ;
typedef int init_data ;


 int ETH_RAMROD_RX_QUEUE_STOP ;
 int PROTOCOLID_ETH ;
 scalar_t__ QED_QUEUE_CID_SELF ;
 int QED_SPQ_MODE_EBLOCK ;
 int cpu_to_le16 (int ) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int
qed_eth_pf_rx_queue_stop(struct qed_hwfn *p_hwfn,
    struct qed_queue_cid *p_cid,
    bool b_eq_completion_only, bool b_cqe_completion)
{
 struct rx_queue_stop_ramrod_data *p_ramrod = ((void*)0);
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc;

 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = p_cid->cid;
 init_data.opaque_fid = p_cid->opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     ETH_RAMROD_RX_QUEUE_STOP,
     PROTOCOLID_ETH, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.rx_queue_stop;
 p_ramrod->vport_id = p_cid->abs.vport_id;
 p_ramrod->rx_queue_id = cpu_to_le16(p_cid->abs.queue_id);




 p_ramrod->complete_cqe_flg = ((p_cid->vfid == QED_QUEUE_CID_SELF) &&
          !b_eq_completion_only) ||
         b_cqe_completion;
 p_ramrod->complete_event_flg = (p_cid->vfid != QED_QUEUE_CID_SELF) ||
           b_eq_completion_only;

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
