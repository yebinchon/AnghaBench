
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vfpf_vport_update_vlan_strip_tlv {int remove_vlan; } ;
struct TYPE_2__ {int inner_vlan_removal; } ;
struct qed_vf_info {int configured_features; TYPE_1__ shadow_config; } ;
struct qed_sp_vport_update_params {int update_inner_vlan_removal_flg; int inner_vlan_removal_flg; } ;
struct qed_iov_vf_mbx {int req_virt; } ;
struct qed_hwfn {int dummy; } ;


 int BIT (int ) ;
 int CHANNEL_TLV_VPORT_UPDATE_VLAN_STRIP ;
 int QED_IOV_VP_UPDATE_VLAN_STRIP ;
 int VLAN_ADDR_FORCED ;
 scalar_t__ qed_iov_search_list_tlvs (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static void
qed_iov_vp_update_vlan_param(struct qed_hwfn *p_hwfn,
        struct qed_sp_vport_update_params *p_data,
        struct qed_vf_info *p_vf,
        struct qed_iov_vf_mbx *p_mbx, u16 *tlvs_mask)
{
 struct vfpf_vport_update_vlan_strip_tlv *p_vlan_tlv;
 u16 tlv = CHANNEL_TLV_VPORT_UPDATE_VLAN_STRIP;

 p_vlan_tlv = (struct vfpf_vport_update_vlan_strip_tlv *)
       qed_iov_search_list_tlvs(p_hwfn, p_mbx->req_virt, tlv);
 if (!p_vlan_tlv)
  return;

 p_vf->shadow_config.inner_vlan_removal = p_vlan_tlv->remove_vlan;


 if (!(p_vf->configured_features & BIT(VLAN_ADDR_FORCED))) {
  p_data->update_inner_vlan_removal_flg = 1;
  p_data->inner_vlan_removal_flg = p_vlan_tlv->remove_vlan;
 }

 *tlvs_mask |= 1 << QED_IOV_VP_UPDATE_VLAN_STRIP;
}
