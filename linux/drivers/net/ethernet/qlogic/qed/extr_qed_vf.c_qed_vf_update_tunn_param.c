
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int b_mode_enabled; } ;
struct TYPE_5__ {int port; } ;
struct TYPE_4__ {int port; } ;
struct qed_tunnel_info {TYPE_3__ ip_gre; TYPE_3__ l2_gre; TYPE_3__ ip_geneve; TYPE_3__ l2_geneve; TYPE_3__ vxlan; TYPE_2__ vxlan_port; TYPE_1__ geneve_port; } ;
struct qed_hwfn {int dummy; } ;
struct pfvf_update_tunn_param_tlv {int vxlan_udp_port; int geneve_udp_port; int ipgre_clss; int ipgre_mode; int l2gre_clss; int l2gre_mode; int ipgeneve_clss; int ipgeneve_mode; int l2geneve_clss; int l2geneve_mode; int vxlan_clss; int vxlan_mode; int tunn_feature_mask; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,int ,int ,int ) ;
 int QED_MODE_IPGENEVE_TUNN ;
 int QED_MODE_IPGRE_TUNN ;
 int QED_MODE_L2GENEVE_TUNN ;
 int QED_MODE_L2GRE_TUNN ;
 int QED_MODE_VXLAN_TUNN ;
 int QED_MSG_IOV ;
 int __qed_vf_update_tunn_param (TYPE_3__*,int ,int ,int ,int ) ;

__attribute__((used)) static void qed_vf_update_tunn_param(struct qed_hwfn *p_hwfn,
         struct qed_tunnel_info *p_tun,
         struct pfvf_update_tunn_param_tlv *p_resp)
{

 u16 feat_mask = p_resp->tunn_feature_mask;

 __qed_vf_update_tunn_param(&p_tun->vxlan, feat_mask,
       p_resp->vxlan_mode, p_resp->vxlan_clss,
       QED_MODE_VXLAN_TUNN);
 __qed_vf_update_tunn_param(&p_tun->l2_geneve, feat_mask,
       p_resp->l2geneve_mode,
       p_resp->l2geneve_clss,
       QED_MODE_L2GENEVE_TUNN);
 __qed_vf_update_tunn_param(&p_tun->ip_geneve, feat_mask,
       p_resp->ipgeneve_mode,
       p_resp->ipgeneve_clss,
       QED_MODE_IPGENEVE_TUNN);
 __qed_vf_update_tunn_param(&p_tun->l2_gre, feat_mask,
       p_resp->l2gre_mode, p_resp->l2gre_clss,
       QED_MODE_L2GRE_TUNN);
 __qed_vf_update_tunn_param(&p_tun->ip_gre, feat_mask,
       p_resp->ipgre_mode, p_resp->ipgre_clss,
       QED_MODE_IPGRE_TUNN);
 p_tun->geneve_port.port = p_resp->geneve_udp_port;
 p_tun->vxlan_port.port = p_resp->vxlan_udp_port;

 DP_VERBOSE(p_hwfn, QED_MSG_IOV,
     "tunn mode: vxlan=0x%x, l2geneve=0x%x, ipgeneve=0x%x, l2gre=0x%x, ipgre=0x%x",
     p_tun->vxlan.b_mode_enabled, p_tun->l2_geneve.b_mode_enabled,
     p_tun->ip_geneve.b_mode_enabled,
     p_tun->l2_gre.b_mode_enabled, p_tun->ip_gre.b_mode_enabled);
}
