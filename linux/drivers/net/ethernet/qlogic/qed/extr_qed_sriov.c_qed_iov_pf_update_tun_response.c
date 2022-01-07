
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_14__ {int port; } ;
struct TYPE_13__ {int port; } ;
struct TYPE_12__ {int tun_cls; int b_mode_enabled; } ;
struct TYPE_11__ {int tun_cls; int b_mode_enabled; } ;
struct TYPE_10__ {int tun_cls; } ;
struct TYPE_9__ {int tun_cls; int b_mode_enabled; } ;
struct TYPE_8__ {int tun_cls; int b_mode_enabled; } ;
struct qed_tunnel_info {TYPE_7__ vxlan_port; TYPE_6__ geneve_port; TYPE_5__ ip_geneve; TYPE_4__ l2_geneve; TYPE_3__ ip_gre; TYPE_2__ l2_gre; TYPE_1__ vxlan; } ;
struct pfvf_update_tunn_param_tlv {int vxlan_udp_port; int geneve_udp_port; int ipgeneve_clss; int l2geneve_clss; int ipgre_clss; int l2gre_clss; int vxlan_clss; int ipgre_mode; int l2gre_mode; int ipgeneve_mode; int l2geneve_mode; int vxlan_mode; int tunn_feature_mask; } ;



__attribute__((used)) static void
qed_iov_pf_update_tun_response(struct pfvf_update_tunn_param_tlv *p_resp,
          struct qed_tunnel_info *p_tun,
          u16 tunn_feature_mask)
{
 p_resp->tunn_feature_mask = tunn_feature_mask;
 p_resp->vxlan_mode = p_tun->vxlan.b_mode_enabled;
 p_resp->l2geneve_mode = p_tun->l2_geneve.b_mode_enabled;
 p_resp->ipgeneve_mode = p_tun->ip_geneve.b_mode_enabled;
 p_resp->l2gre_mode = p_tun->l2_gre.b_mode_enabled;
 p_resp->ipgre_mode = p_tun->l2_gre.b_mode_enabled;
 p_resp->vxlan_clss = p_tun->vxlan.tun_cls;
 p_resp->l2gre_clss = p_tun->l2_gre.tun_cls;
 p_resp->ipgre_clss = p_tun->ip_gre.tun_cls;
 p_resp->l2geneve_clss = p_tun->l2_geneve.tun_cls;
 p_resp->ipgeneve_clss = p_tun->ip_geneve.tun_cls;
 p_resp->geneve_udp_port = p_tun->geneve_port.port;
 p_resp->vxlan_udp_port = p_tun->vxlan_port.port;
}
