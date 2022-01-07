
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qed_tunnel_info {int dummy; } ;
struct TYPE_6__ {int tunnel_config; } ;
struct TYPE_7__ {TYPE_2__ pf_update; } ;
struct qed_spq_entry {TYPE_3__ ramrod; } ;
struct qed_spq_comp_cb {int dummy; } ;
struct qed_sp_init_data {int comp_mode; struct qed_spq_comp_cb* p_comp_data; int opaque_fid; int cid; } ;
struct qed_ptt {int dummy; } ;
struct TYPE_5__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_4__* cdev; TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum spq_mode { ____Placeholder_spq_mode } spq_mode ;
struct TYPE_8__ {int tunnel; } ;


 int COMMON_RAMROD_PF_UPDATE ;
 int EINVAL ;
 scalar_t__ IS_VF (TYPE_4__*) ;
 int PROTOCOLID_COMMON ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_set_hw_tunn_mode_port (struct qed_hwfn*,struct qed_ptt*,int *) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_get_cid (struct qed_hwfn*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;
 int qed_tunn_set_pf_update_params (struct qed_hwfn*,struct qed_tunnel_info*,int *) ;
 int qed_vf_pf_tunnel_param_update (struct qed_hwfn*,struct qed_tunnel_info*) ;

int qed_sp_pf_update_tunn_cfg(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         struct qed_tunnel_info *p_tunn,
         enum spq_mode comp_mode,
         struct qed_spq_comp_cb *p_comp_data)
{
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc = -EINVAL;

 if (IS_VF(p_hwfn->cdev))
  return qed_vf_pf_tunnel_param_update(p_hwfn, p_tunn);

 if (!p_tunn)
  return -EINVAL;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qed_spq_get_cid(p_hwfn);
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = comp_mode;
 init_data.p_comp_data = p_comp_data;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     COMMON_RAMROD_PF_UPDATE, PROTOCOLID_COMMON,
     &init_data);
 if (rc)
  return rc;

 qed_tunn_set_pf_update_params(p_hwfn, p_tunn,
          &p_ent->ramrod.pf_update.tunnel_config);

 rc = qed_spq_post(p_hwfn, p_ent, ((void*)0));
 if (rc)
  return rc;

 qed_set_hw_tunn_mode_port(p_hwfn, p_ptt, &p_hwfn->cdev->tunnel);

 return rc;
}
