
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int update_enable_stag_pri_change; int enable_stag_pri_change; } ;
struct TYPE_8__ {TYPE_3__ pf_update; } ;
struct qed_spq_entry {TYPE_4__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct TYPE_6__ {scalar_t__ pri_type; } ;
struct TYPE_5__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_2__ ufp_info; TYPE_1__ hw_info; } ;
typedef int init_data ;


 int COMMON_RAMROD_PF_UPDATE ;
 int DP_INFO (struct qed_hwfn*,char*,scalar_t__) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int PROTOCOLID_COMMON ;
 int QED_SPQ_MODE_CB ;
 scalar_t__ QED_UFP_PRI_OS ;
 scalar_t__ QED_UFP_PRI_UNKNOWN ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_get_cid (struct qed_hwfn*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

int qed_sp_pf_update_ufp(struct qed_hwfn *p_hwfn)
{
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc = -EOPNOTSUPP;

 if (p_hwfn->ufp_info.pri_type == QED_UFP_PRI_UNKNOWN) {
  DP_INFO(p_hwfn, "Invalid priority type %d\n",
   p_hwfn->ufp_info.pri_type);
  return -EINVAL;
 }


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qed_spq_get_cid(p_hwfn);
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_CB;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     COMMON_RAMROD_PF_UPDATE, PROTOCOLID_COMMON,
     &init_data);
 if (rc)
  return rc;

 p_ent->ramrod.pf_update.update_enable_stag_pri_change = 1;
 if (p_hwfn->ufp_info.pri_type == QED_UFP_PRI_OS)
  p_ent->ramrod.pf_update.enable_stag_pri_change = 1;
 else
  p_ent->ramrod.pf_update.enable_stag_pri_change = 0;

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
