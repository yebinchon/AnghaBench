
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct core_rx_stop_ramrod_data {int complete_event_flg; int queue_id; } ;
struct TYPE_4__ {struct core_rx_stop_ramrod_data core_rx_queue_stop; } ;
struct qed_spq_entry {TYPE_2__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct qed_ll2_info {int queue_id; int cid; } ;
struct TYPE_3__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;
typedef int init_data ;


 int CORE_RAMROD_RX_QUEUE_STOP ;
 int EINVAL ;
 int PROTOCOLID_CORE ;
 int QED_SPQ_MODE_EBLOCK ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int qed_sp_ll2_rx_queue_stop(struct qed_hwfn *p_hwfn,
        struct qed_ll2_info *p_ll2_conn)
{
 struct core_rx_stop_ramrod_data *p_ramrod = ((void*)0);
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc = -EINVAL;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = p_ll2_conn->cid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     CORE_RAMROD_RX_QUEUE_STOP,
     PROTOCOLID_CORE, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.core_rx_queue_stop;

 p_ramrod->complete_event_flg = 1;
 p_ramrod->queue_id = p_ll2_conn->queue_id;

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
