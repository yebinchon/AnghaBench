
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct vport_update_ramrod_data_cmn {int ctl_frame_ethtype_check_en; int ctl_frame_mac_check_en; void* update_anti_spoofing_en_flg; int anti_spoofing_en; int update_tx_switching_en_flg; int tx_switching_en; int silent_vlan_removal_en; int update_default_vlan_flg; int default_vlan; void* update_default_vlan_en_flg; int default_vlan_en; void* update_inner_vlan_removal_en_flg; int inner_vlan_removal_en; void* update_accept_any_vlan_flg; int accept_any_vlan; int update_tx_active_flg; int tx_active_flg; int update_rx_active_flg; int rx_active_flg; void* vport_id; } ;
struct vport_update_ramrod_data {struct vport_update_ramrod_data_cmn common; } ;
struct TYPE_2__ {struct vport_update_ramrod_data vport_update; } ;
struct qed_spq_entry {TYPE_1__ ramrod; } ;
struct qed_spq_comp_cb {int dummy; } ;
struct qed_sp_vport_update_params {int sge_tpa_params; int accept_flags; int ethtype_chk_en; int mac_chk_en; scalar_t__ update_ctl_frame_check; void* update_anti_spoofing_en_flg; int anti_spoofing_en; int update_tx_switching_flg; int tx_switching_flg; int silent_vlan_removal_flg; int update_default_vlan_flg; int default_vlan; void* update_default_vlan_enable_flg; int default_vlan_enable_flg; void* update_inner_vlan_removal_flg; int inner_vlan_removal_flg; void* update_accept_any_vlan_flg; int accept_any_vlan; int update_vport_active_tx_flg; int vport_active_tx_flg; int update_vport_active_rx_flg; int vport_active_rx_flg; int opaque_fid; int vport_id; struct qed_rss_params* rss_params; } ;
struct qed_sp_init_data {int comp_mode; struct qed_spq_comp_cb* p_comp_data; int opaque_fid; int cid; } ;
struct qed_rss_params {int dummy; } ;
struct qed_hwfn {int cdev; } ;
typedef int init_data ;
typedef enum spq_mode { ____Placeholder_spq_mode } spq_mode ;


 int EINVAL ;
 int ETH_RAMROD_VPORT_UPDATE ;
 scalar_t__ IS_VF (int ) ;
 int PROTOCOLID_ETH ;
 int cpu_to_le16 (int ) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_fw_vport (struct qed_hwfn*,int ,void**) ;
 int qed_sp_destroy_request (struct qed_hwfn*,struct qed_spq_entry*) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_sp_update_accept_mode (struct qed_hwfn*,struct vport_update_ramrod_data*,int ) ;
 int qed_sp_update_mcast_bin (struct qed_hwfn*,struct vport_update_ramrod_data*,struct qed_sp_vport_update_params*) ;
 int qed_sp_vport_update_rss (struct qed_hwfn*,struct vport_update_ramrod_data*,struct qed_rss_params*) ;
 int qed_sp_vport_update_sge_tpa (struct qed_hwfn*,struct vport_update_ramrod_data*,int ) ;
 int qed_spq_get_cid (struct qed_hwfn*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;
 int qed_vf_pf_vport_update (struct qed_hwfn*,struct qed_sp_vport_update_params*) ;

int qed_sp_vport_update(struct qed_hwfn *p_hwfn,
   struct qed_sp_vport_update_params *p_params,
   enum spq_mode comp_mode,
   struct qed_spq_comp_cb *p_comp_data)
{
 struct qed_rss_params *p_rss_params = p_params->rss_params;
 struct vport_update_ramrod_data_cmn *p_cmn;
 struct qed_sp_init_data init_data;
 struct vport_update_ramrod_data *p_ramrod = ((void*)0);
 struct qed_spq_entry *p_ent = ((void*)0);
 u8 abs_vport_id = 0, val;
 int rc = -EINVAL;

 if (IS_VF(p_hwfn->cdev)) {
  rc = qed_vf_pf_vport_update(p_hwfn, p_params);
  return rc;
 }

 rc = qed_fw_vport(p_hwfn, p_params->vport_id, &abs_vport_id);
 if (rc)
  return rc;

 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qed_spq_get_cid(p_hwfn);
 init_data.opaque_fid = p_params->opaque_fid;
 init_data.comp_mode = comp_mode;
 init_data.p_comp_data = p_comp_data;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     ETH_RAMROD_VPORT_UPDATE,
     PROTOCOLID_ETH, &init_data);
 if (rc)
  return rc;


 p_ramrod = &p_ent->ramrod.vport_update;
 p_cmn = &p_ramrod->common;

 p_cmn->vport_id = abs_vport_id;
 p_cmn->rx_active_flg = p_params->vport_active_rx_flg;
 p_cmn->update_rx_active_flg = p_params->update_vport_active_rx_flg;
 p_cmn->tx_active_flg = p_params->vport_active_tx_flg;
 p_cmn->update_tx_active_flg = p_params->update_vport_active_tx_flg;
 p_cmn->accept_any_vlan = p_params->accept_any_vlan;
 val = p_params->update_accept_any_vlan_flg;
 p_cmn->update_accept_any_vlan_flg = val;

 p_cmn->inner_vlan_removal_en = p_params->inner_vlan_removal_flg;
 val = p_params->update_inner_vlan_removal_flg;
 p_cmn->update_inner_vlan_removal_en_flg = val;

 p_cmn->default_vlan_en = p_params->default_vlan_enable_flg;
 val = p_params->update_default_vlan_enable_flg;
 p_cmn->update_default_vlan_en_flg = val;

 p_cmn->default_vlan = cpu_to_le16(p_params->default_vlan);
 p_cmn->update_default_vlan_flg = p_params->update_default_vlan_flg;

 p_cmn->silent_vlan_removal_en = p_params->silent_vlan_removal_flg;

 p_ramrod->common.tx_switching_en = p_params->tx_switching_flg;
 p_cmn->update_tx_switching_en_flg = p_params->update_tx_switching_flg;

 p_cmn->anti_spoofing_en = p_params->anti_spoofing_en;
 val = p_params->update_anti_spoofing_en_flg;
 p_ramrod->common.update_anti_spoofing_en_flg = val;

 rc = qed_sp_vport_update_rss(p_hwfn, p_ramrod, p_rss_params);
 if (rc) {
  qed_sp_destroy_request(p_hwfn, p_ent);
  return rc;
 }

 if (p_params->update_ctl_frame_check) {
  p_cmn->ctl_frame_mac_check_en = p_params->mac_chk_en;
  p_cmn->ctl_frame_ethtype_check_en = p_params->ethtype_chk_en;
 }


 qed_sp_update_mcast_bin(p_hwfn, p_ramrod, p_params);

 qed_sp_update_accept_mode(p_hwfn, p_ramrod, p_params->accept_flags);
 qed_sp_vport_update_sge_tpa(p_hwfn, p_ramrod, p_params->sge_tpa_params);
 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
