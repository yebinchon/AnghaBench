
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int u8 ;
struct nfp_flower_tp_ports {int dummy; } ;
struct TYPE_16__ {int tos; int ttl; } ;
struct TYPE_13__ {int port_src; TYPE_3__ ip_ext; int ipv4_dst; int ipv4_src; } ;
struct TYPE_22__ {int tos; int ttl; } ;
struct TYPE_19__ {int * u6_addr32; } ;
struct TYPE_20__ {TYPE_6__ in6_u; } ;
struct TYPE_17__ {int * u6_addr32; } ;
struct TYPE_18__ {TYPE_4__ in6_u; } ;
struct TYPE_12__ {int ipv6_flow_label_exthdr; TYPE_9__ ip_ext; TYPE_7__ ipv6_dst; TYPE_5__ ipv6_src; } ;
struct TYPE_15__ {int * mac_src; int * mac_dst; } ;
struct nfp_flower_merge_check {TYPE_11__ l4; TYPE_10__ ipv6; TYPE_11__ ipv4; TYPE_2__ l2; void* tci; } ;
struct nfp_flower_ipv4 {int dummy; } ;
struct nfp_fl_set_tport {int* tp_port_mask; } ;
struct nfp_fl_set_ipv6_tc_hl_fl {int ipv6_label_mask; int ipv6_tc_mask; int ipv6_hop_limit_mask; } ;
struct nfp_fl_set_ipv6_addr {TYPE_8__* ipv6; } ;
struct nfp_fl_set_ip4_ttl_tos {int ipv4_tos_mask; int ipv4_ttl_mask; } ;
struct nfp_fl_set_ip4_addrs {int ipv4_dst_mask; int ipv4_src_mask; } ;
struct nfp_fl_set_eth {int * eth_addr_mask; } ;
struct nfp_fl_push_vlan {int vlan_tci; } ;
struct TYPE_14__ {unsigned int act_len; } ;
struct nfp_fl_payload {int * action_data; TYPE_1__ meta; } ;
struct nfp_fl_act_head {int jump_id; unsigned int len_lw; } ;
struct TYPE_21__ {int mask; } ;


 int EOPNOTSUPP ;
 int ETH_ALEN ;
 unsigned int NFP_FL_LW_SIZ ;
 void* cpu_to_be16 (int) ;
 int eth_broadcast_addr (int *) ;
 int memset (TYPE_11__*,int,int) ;

__attribute__((used)) static int
nfp_flower_update_merge_with_actions(struct nfp_fl_payload *flow,
         struct nfp_flower_merge_check *merge,
         u8 *last_act_id, int *act_out)
{
 struct nfp_fl_set_ipv6_tc_hl_fl *ipv6_tc_hl_fl;
 struct nfp_fl_set_ip4_ttl_tos *ipv4_ttl_tos;
 struct nfp_fl_set_ip4_addrs *ipv4_add;
 struct nfp_fl_set_ipv6_addr *ipv6_add;
 struct nfp_fl_push_vlan *push_vlan;
 struct nfp_fl_set_tport *tport;
 struct nfp_fl_set_eth *eth;
 struct nfp_fl_act_head *a;
 unsigned int act_off = 0;
 u8 act_id = 0;
 u8 *ports;
 int i;

 while (act_off < flow->meta.act_len) {
  a = (struct nfp_fl_act_head *)&flow->action_data[act_off];
  act_id = a->jump_id;

  switch (act_id) {
  case 142:
   if (act_out)
    (*act_out)++;
   break;
  case 137:
   push_vlan = (struct nfp_fl_push_vlan *)a;
   if (push_vlan->vlan_tci)
    merge->tci = cpu_to_be16(0xffff);
   break;
  case 141:
   merge->tci = cpu_to_be16(0);
   break;
  case 133:

   eth_broadcast_addr(&merge->l2.mac_dst[0]);
   eth_broadcast_addr(&merge->l2.mac_src[0]);
   memset(&merge->l4, 0xff,
          sizeof(struct nfp_flower_tp_ports));
   memset(&merge->ipv4, 0xff,
          sizeof(struct nfp_flower_ipv4));
   break;
  case 136:
   eth = (struct nfp_fl_set_eth *)a;
   for (i = 0; i < ETH_ALEN; i++)
    merge->l2.mac_dst[i] |= eth->eth_addr_mask[i];
   for (i = 0; i < ETH_ALEN; i++)
    merge->l2.mac_src[i] |=
     eth->eth_addr_mask[ETH_ALEN + i];
   break;
  case 135:
   ipv4_add = (struct nfp_fl_set_ip4_addrs *)a;
   merge->ipv4.ipv4_src |= ipv4_add->ipv4_src_mask;
   merge->ipv4.ipv4_dst |= ipv4_add->ipv4_dst_mask;
   break;
  case 134:
   ipv4_ttl_tos = (struct nfp_fl_set_ip4_ttl_tos *)a;
   merge->ipv4.ip_ext.ttl |= ipv4_ttl_tos->ipv4_ttl_mask;
   merge->ipv4.ip_ext.tos |= ipv4_ttl_tos->ipv4_tos_mask;
   break;
  case 131:
   ipv6_add = (struct nfp_fl_set_ipv6_addr *)a;
   for (i = 0; i < 4; i++)
    merge->ipv6.ipv6_src.in6_u.u6_addr32[i] |=
     ipv6_add->ipv6[i].mask;
   break;
  case 132:
   ipv6_add = (struct nfp_fl_set_ipv6_addr *)a;
   for (i = 0; i < 4; i++)
    merge->ipv6.ipv6_dst.in6_u.u6_addr32[i] |=
     ipv6_add->ipv6[i].mask;
   break;
  case 130:
   ipv6_tc_hl_fl = (struct nfp_fl_set_ipv6_tc_hl_fl *)a;
   merge->ipv6.ip_ext.ttl |=
    ipv6_tc_hl_fl->ipv6_hop_limit_mask;
   merge->ipv6.ip_ext.tos |= ipv6_tc_hl_fl->ipv6_tc_mask;
   merge->ipv6.ipv6_flow_label_exthdr |=
    ipv6_tc_hl_fl->ipv6_label_mask;
   break;
  case 128:
  case 129:
   tport = (struct nfp_fl_set_tport *)a;
   ports = (u8 *)&merge->l4.port_src;
   for (i = 0; i < 4; i++)
    ports[i] |= tport->tp_port_mask[i];
   break;
  case 139:
  case 140:
  case 138:
   break;
  default:
   return -EOPNOTSUPP;
  }

  act_off += a->len_lw << NFP_FL_LW_SIZ;
 }

 if (last_act_id)
  *last_act_id = act_id;

 return 0;
}
