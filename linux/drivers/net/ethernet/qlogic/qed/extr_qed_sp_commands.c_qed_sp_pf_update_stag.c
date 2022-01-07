
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {int update_mf_vlan_flag; int mf_vlan; } ;
struct TYPE_9__ {TYPE_3__ pf_update; } ;
struct qed_spq_entry {TYPE_4__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct TYPE_10__ {scalar_t__ tc; } ;
struct TYPE_6__ {int ovlan; int opaque_fid; } ;
struct qed_hwfn {TYPE_5__ ufp_info; TYPE_2__* cdev; TYPE_1__ hw_info; } ;
typedef int init_data ;
struct TYPE_7__ {int mf_bits; } ;


 int COMMON_RAMROD_PF_UPDATE ;
 int PROTOCOLID_COMMON ;
 int QED_MF_UFP_SPECIFIC ;
 int QED_SPQ_MODE_CB ;
 int cpu_to_le16 (int) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_get_cid (struct qed_hwfn*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int qed_sp_pf_update_stag(struct qed_hwfn *p_hwfn)
{
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qed_spq_get_cid(p_hwfn);
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_CB;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     COMMON_RAMROD_PF_UPDATE, PROTOCOLID_COMMON,
     &init_data);
 if (rc)
  return rc;

 p_ent->ramrod.pf_update.update_mf_vlan_flag = 1;
 p_ent->ramrod.pf_update.mf_vlan = cpu_to_le16(p_hwfn->hw_info.ovlan);
 if (test_bit(QED_MF_UFP_SPECIFIC, &p_hwfn->cdev->mf_bits))
  p_ent->ramrod.pf_update.mf_vlan |=
   cpu_to_le16(((u16)p_hwfn->ufp_info.tc << 13));

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
