
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct vfpf_vport_update_mcast_bin_tlv {int bins; } ;
struct qed_sp_vport_update_params {int update_approx_mcast_flg; int bins; } ;
struct qed_iov_vf_mbx {int req_virt; } ;
struct qed_hwfn {int dummy; } ;


 int CHANNEL_TLV_VPORT_UPDATE_MCAST ;
 int ETH_MULTICAST_MAC_BINS_IN_REGS ;
 int QED_IOV_VP_UPDATE_MCAST ;
 int memcpy (int ,int ,int) ;
 scalar_t__ qed_iov_search_list_tlvs (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static void
qed_iov_vp_update_mcast_bin_param(struct qed_hwfn *p_hwfn,
      struct qed_sp_vport_update_params *p_data,
      struct qed_iov_vf_mbx *p_mbx, u16 *tlvs_mask)
{
 struct vfpf_vport_update_mcast_bin_tlv *p_mcast_tlv;
 u16 tlv = CHANNEL_TLV_VPORT_UPDATE_MCAST;

 p_mcast_tlv = (struct vfpf_vport_update_mcast_bin_tlv *)
     qed_iov_search_list_tlvs(p_hwfn, p_mbx->req_virt, tlv);
 if (!p_mcast_tlv)
  return;

 p_data->update_approx_mcast_flg = 1;
 memcpy(p_data->bins, p_mcast_tlv->bins,
        sizeof(u32) * ETH_MULTICAST_MAC_BINS_IN_REGS);
 *tlvs_mask |= 1 << QED_IOV_VP_UPDATE_MCAST;
}
