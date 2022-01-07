
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int src; int dst; } ;
struct TYPE_6__ {TYPE_2__ ipv4; } ;
struct ip_tunnel_key {int tp_dst; TYPE_3__ u; scalar_t__ tp_src; int member_0; } ;
struct TYPE_4__ {int member_0; } ;
struct bnxt_tc_l2_key {int inner_vlan_tci; int inner_vlan_tpid; scalar_t__ num_vlans; int smac; int dmac; TYPE_1__ member_0; } ;
struct bnxt_tc_tunnel_node {scalar_t__ tunnel_handle; struct bnxt_tc_l2_key l2_info; } ;
struct bnxt_tc_info {int decap_ht_params; int decap_table; } ;
struct bnxt_tc_flow_node {struct bnxt_tc_tunnel_node* decap_node; } ;
struct bnxt_tc_flow {int flags; struct ip_tunnel_key tun_key; } ;
struct bnxt {struct bnxt_tc_info* tc_info; } ;
typedef scalar_t__ __le32 ;


 int BNXT_TC_FLOW_FLAGS_TUNL_ETH_ADDRS ;
 int ENOMEM ;
 scalar_t__ INVALID_TUNNEL_HANDLE ;
 int bnxt_tc_get_ref_decap_handle (struct bnxt*,struct bnxt_tc_flow*,struct bnxt_tc_l2_key*,struct bnxt_tc_flow_node*,scalar_t__*) ;
 struct bnxt_tc_tunnel_node* bnxt_tc_get_tunnel_node (struct bnxt*,int *,int *,struct ip_tunnel_key*) ;
 int bnxt_tc_put_decap_l2_node (struct bnxt*,struct bnxt_tc_flow_node*) ;
 int bnxt_tc_put_tunnel_node (struct bnxt*,int *,int *,struct bnxt_tc_tunnel_node*) ;
 int bnxt_tc_resolve_tunnel_hdrs (struct bnxt*,struct ip_tunnel_key*,struct bnxt_tc_l2_key*) ;
 int ether_addr_copy (int ,int ) ;
 int hwrm_cfa_decap_filter_alloc (struct bnxt*,struct bnxt_tc_flow*,struct bnxt_tc_l2_key*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int bnxt_tc_get_decap_handle(struct bnxt *bp, struct bnxt_tc_flow *flow,
        struct bnxt_tc_flow_node *flow_node,
        __le32 *decap_filter_handle)
{
 struct ip_tunnel_key *decap_key = &flow->tun_key;
 struct bnxt_tc_info *tc_info = bp->tc_info;
 struct bnxt_tc_l2_key l2_info = { {0} };
 struct bnxt_tc_tunnel_node *decap_node;
 struct ip_tunnel_key tun_key = { 0 };
 struct bnxt_tc_l2_key *decap_l2_info;
 __le32 ref_decap_handle;
 int rc;






 decap_key->tp_src = 0;
 decap_node = bnxt_tc_get_tunnel_node(bp, &tc_info->decap_table,
          &tc_info->decap_ht_params,
          decap_key);
 if (!decap_node)
  return -ENOMEM;

 flow_node->decap_node = decap_node;

 if (decap_node->tunnel_handle != INVALID_TUNNEL_HANDLE)
  goto done;





 tun_key.u.ipv4.dst = flow->tun_key.u.ipv4.src;
 tun_key.tp_dst = flow->tun_key.tp_dst;
 rc = bnxt_tc_resolve_tunnel_hdrs(bp, &tun_key, &l2_info);
 if (rc)
  goto put_decap;

 decap_l2_info = &decap_node->l2_info;

 ether_addr_copy(decap_l2_info->dmac, l2_info.smac);
 if (l2_info.num_vlans) {
  decap_l2_info->num_vlans = l2_info.num_vlans;
  decap_l2_info->inner_vlan_tpid = l2_info.inner_vlan_tpid;
  decap_l2_info->inner_vlan_tci = l2_info.inner_vlan_tci;
 }
 flow->flags |= BNXT_TC_FLOW_FLAGS_TUNL_ETH_ADDRS;






 rc = bnxt_tc_get_ref_decap_handle(bp, flow, decap_l2_info, flow_node,
       &ref_decap_handle);
 if (rc)
  goto put_decap;


 rc = hwrm_cfa_decap_filter_alloc(bp, flow, decap_l2_info,
      ref_decap_handle,
      &decap_node->tunnel_handle);
 if (rc)
  goto put_decap_l2;

done:
 *decap_filter_handle = decap_node->tunnel_handle;
 return 0;

put_decap_l2:
 bnxt_tc_put_decap_l2_node(bp, flow_node);
put_decap:
 bnxt_tc_put_tunnel_node(bp, &tc_info->decap_table,
    &tc_info->decap_ht_params,
    flow_node->decap_node);
 return rc;
}
