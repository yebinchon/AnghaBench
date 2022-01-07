
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vfpf_vport_update_tx_switch_tlv {int tx_switching; } ;
struct qed_sp_vport_update_params {int update_tx_switching_flg; int tx_switching_flg; } ;
struct qed_iov_vf_mbx {int req_virt; } ;
struct qed_hwfn {int dummy; } ;


 int CHANNEL_TLV_VPORT_UPDATE_TX_SWITCH ;
 int QED_IOV_VP_UPDATE_TX_SWITCH ;
 scalar_t__ qed_iov_search_list_tlvs (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static void
qed_iov_vp_update_tx_switch(struct qed_hwfn *p_hwfn,
       struct qed_sp_vport_update_params *p_data,
       struct qed_iov_vf_mbx *p_mbx, u16 *tlvs_mask)
{
 struct vfpf_vport_update_tx_switch_tlv *p_tx_switch_tlv;
 u16 tlv = CHANNEL_TLV_VPORT_UPDATE_TX_SWITCH;

 p_tx_switch_tlv = (struct vfpf_vport_update_tx_switch_tlv *)
     qed_iov_search_list_tlvs(p_hwfn, p_mbx->req_virt,
         tlv);
 if (!p_tx_switch_tlv)
  return;

 p_data->update_tx_switching_flg = 1;
 p_data->tx_switching_flg = p_tx_switch_tlv->tx_switching;
 *tlvs_mask |= 1 << QED_IOV_VP_UPDATE_TX_SWITCH;
}
