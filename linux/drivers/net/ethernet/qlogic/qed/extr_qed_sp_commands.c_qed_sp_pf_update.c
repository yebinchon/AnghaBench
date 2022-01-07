
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int pf_update; } ;
struct qed_spq_entry {TYPE_3__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct TYPE_4__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_2__* p_dcbx_info; TYPE_1__ hw_info; } ;
typedef int init_data ;
struct TYPE_5__ {int results; } ;


 int COMMON_RAMROD_PF_UPDATE ;
 int EINVAL ;
 int PROTOCOLID_COMMON ;
 int QED_SPQ_MODE_CB ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_dcbx_set_pf_update_params (int *,int *) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_get_cid (struct qed_hwfn*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

int qed_sp_pf_update(struct qed_hwfn *p_hwfn)
{
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc = -EINVAL;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qed_spq_get_cid(p_hwfn);
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_CB;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     COMMON_RAMROD_PF_UPDATE, PROTOCOLID_COMMON,
     &init_data);
 if (rc)
  return rc;

 qed_dcbx_set_pf_update_params(&p_hwfn->p_dcbx_info->results,
          &p_ent->ramrod.pf_update);

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
