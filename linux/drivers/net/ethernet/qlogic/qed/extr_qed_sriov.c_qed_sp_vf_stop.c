
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct vf_stop_ramrod_data {int vf_id; } ;
struct TYPE_2__ {struct vf_stop_ramrod_data vf_stop; } ;
struct qed_spq_entry {TYPE_1__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct qed_hwfn {int dummy; } ;
typedef int init_data ;


 int COMMON_RAMROD_VF_STOP ;
 int EINVAL ;
 int GET_FIELD (int ,int ) ;
 int PROTOCOLID_COMMON ;
 int PXP_CONCRETE_FID_VFID ;
 int QED_SPQ_MODE_EBLOCK ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_get_cid (struct qed_hwfn*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int qed_sp_vf_stop(struct qed_hwfn *p_hwfn,
     u32 concrete_vfid, u16 opaque_vfid)
{
 struct vf_stop_ramrod_data *p_ramrod = ((void*)0);
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc = -EINVAL;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qed_spq_get_cid(p_hwfn);
 init_data.opaque_fid = opaque_vfid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     COMMON_RAMROD_VF_STOP,
     PROTOCOLID_COMMON, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.vf_stop;

 p_ramrod->vf_id = GET_FIELD(concrete_vfid, PXP_CONCRETE_FID_VFID);

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
