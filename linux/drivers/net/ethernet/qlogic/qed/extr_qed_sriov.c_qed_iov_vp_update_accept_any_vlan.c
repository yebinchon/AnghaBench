
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vfpf_vport_update_accept_any_vlan_tlv {int update_accept_any_vlan_flg; int accept_any_vlan; } ;
struct qed_sp_vport_update_params {int update_accept_any_vlan_flg; int accept_any_vlan; } ;
struct qed_iov_vf_mbx {int req_virt; } ;
struct qed_hwfn {int dummy; } ;


 int CHANNEL_TLV_VPORT_UPDATE_ACCEPT_ANY_VLAN ;
 int QED_IOV_VP_UPDATE_ACCEPT_ANY_VLAN ;
 scalar_t__ qed_iov_search_list_tlvs (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static void
qed_iov_vp_update_accept_any_vlan(struct qed_hwfn *p_hwfn,
      struct qed_sp_vport_update_params *p_data,
      struct qed_iov_vf_mbx *p_mbx, u16 *tlvs_mask)
{
 struct vfpf_vport_update_accept_any_vlan_tlv *p_accept_any_vlan;
 u16 tlv = CHANNEL_TLV_VPORT_UPDATE_ACCEPT_ANY_VLAN;

 p_accept_any_vlan = (struct vfpf_vport_update_accept_any_vlan_tlv *)
       qed_iov_search_list_tlvs(p_hwfn, p_mbx->req_virt,
           tlv);
 if (!p_accept_any_vlan)
  return;

 p_data->accept_any_vlan = p_accept_any_vlan->accept_any_vlan;
 p_data->update_accept_any_vlan_flg =
      p_accept_any_vlan->update_accept_any_vlan_flg;
 *tlvs_mask |= 1 << QED_IOV_VP_UPDATE_ACCEPT_ANY_VLAN;
}
