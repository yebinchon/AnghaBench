
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct vport_stop_ramrod_data {int vport_id; } ;
struct TYPE_2__ {struct vport_stop_ramrod_data vport_stop; } ;
struct qed_spq_entry {TYPE_1__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct qed_hwfn {int cdev; } ;
typedef int init_data ;


 int ETH_RAMROD_VPORT_STOP ;
 scalar_t__ IS_VF (int ) ;
 int PROTOCOLID_ETH ;
 int QED_SPQ_MODE_EBLOCK ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_fw_vport (struct qed_hwfn*,int ,int *) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_get_cid (struct qed_hwfn*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;
 int qed_vf_pf_vport_stop (struct qed_hwfn*) ;

int qed_sp_vport_stop(struct qed_hwfn *p_hwfn, u16 opaque_fid, u8 vport_id)
{
 struct vport_stop_ramrod_data *p_ramrod;
 struct qed_sp_init_data init_data;
 struct qed_spq_entry *p_ent;
 u8 abs_vport_id = 0;
 int rc;

 if (IS_VF(p_hwfn->cdev))
  return qed_vf_pf_vport_stop(p_hwfn);

 rc = qed_fw_vport(p_hwfn, vport_id, &abs_vport_id);
 if (rc)
  return rc;

 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qed_spq_get_cid(p_hwfn);
 init_data.opaque_fid = opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     ETH_RAMROD_VPORT_STOP,
     PROTOCOLID_ETH, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.vport_stop;
 p_ramrod->vport_id = abs_vport_id;

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
