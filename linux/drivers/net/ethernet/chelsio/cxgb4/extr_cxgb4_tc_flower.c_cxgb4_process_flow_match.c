
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_22__ ;
typedef struct TYPE_35__ TYPE_21__ ;
typedef struct TYPE_34__ TYPE_20__ ;
typedef struct TYPE_33__ TYPE_1__ ;
typedef struct TYPE_32__ TYPE_19__ ;
typedef struct TYPE_31__ TYPE_18__ ;
typedef struct TYPE_30__ TYPE_17__ ;
typedef struct TYPE_29__ TYPE_16__ ;
typedef struct TYPE_28__ TYPE_15__ ;
typedef struct TYPE_27__ TYPE_14__ ;
typedef struct TYPE_26__ TYPE_13__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct flow_rule {int dummy; } ;
struct flow_match_vlan {TYPE_14__* mask; TYPE_13__* key; } ;
struct flow_match_ports {TYPE_8__* key; TYPE_7__* mask; } ;
struct flow_match_ipv6_addrs {TYPE_6__* key; TYPE_3__* mask; } ;
struct flow_match_ipv4_addrs {TYPE_20__* key; TYPE_19__* mask; } ;
struct flow_match_ip {TYPE_10__* mask; TYPE_9__* key; } ;
struct flow_match_enc_keyid {TYPE_12__* mask; TYPE_11__* key; } ;
struct flow_match_control {TYPE_15__* key; } ;
struct flow_match_basic {TYPE_17__* mask; TYPE_16__* key; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_31__ {int encap_vld; int ivlan_vld; int iport; scalar_t__ ethtype; scalar_t__ ivlan; void* vni; int tos; void* fport; void* lport; int * fip; int * lip; int proto; } ;
struct TYPE_35__ {scalar_t__ ethtype; int encap_vld; int ivlan_vld; int iport; scalar_t__ ivlan; void* vni; int tos; void* fport; void* lport; int * fip; int * lip; int proto; } ;
struct ch_filter_specification {int type; TYPE_18__ mask; TYPE_21__ val; void* nat_fport; void* nat_lport; int * nat_fip; int * nat_lip; } ;
struct TYPE_44__ {int tos; } ;
struct TYPE_43__ {int src; int dst; } ;
struct TYPE_42__ {int src; int dst; } ;
struct TYPE_40__ {int * s6_addr; } ;
struct TYPE_39__ {int * s6_addr; } ;
struct TYPE_41__ {TYPE_5__ src; TYPE_4__ dst; } ;
struct TYPE_37__ {int * s6_addr; } ;
struct TYPE_33__ {int * s6_addr; } ;
struct TYPE_38__ {TYPE_2__ src; TYPE_1__ dst; } ;
struct TYPE_36__ {int port_id; } ;
struct TYPE_34__ {int src; int dst; } ;
struct TYPE_32__ {int src; int dst; } ;
struct TYPE_30__ {int ip_proto; int n_proto; } ;
struct TYPE_29__ {int ip_proto; int n_proto; } ;
struct TYPE_28__ {scalar_t__ addr_type; } ;
struct TYPE_27__ {scalar_t__ vlan_id; scalar_t__ vlan_priority; } ;
struct TYPE_26__ {scalar_t__ vlan_id; scalar_t__ vlan_priority; } ;
struct TYPE_25__ {int keyid; } ;
struct TYPE_24__ {int keyid; } ;
struct TYPE_23__ {int tos; } ;


 scalar_t__ ETH_P_8021Q ;
 scalar_t__ ETH_P_ALL ;
 scalar_t__ ETH_P_IPV6 ;
 int FLOW_DISSECTOR_KEY_BASIC ;
 int FLOW_DISSECTOR_KEY_CONTROL ;
 int FLOW_DISSECTOR_KEY_ENC_KEYID ;
 int FLOW_DISSECTOR_KEY_IP ;
 scalar_t__ FLOW_DISSECTOR_KEY_IPV4_ADDRS ;
 scalar_t__ FLOW_DISSECTOR_KEY_IPV6_ADDRS ;
 int FLOW_DISSECTOR_KEY_PORTS ;
 int FLOW_DISSECTOR_KEY_VLAN ;
 scalar_t__ VLAN_PRIO_SHIFT ;
 void* be32_to_cpu (int ) ;
 void* cpu_to_be16 (int ) ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_basic (struct flow_rule*,struct flow_match_basic*) ;
 int flow_rule_match_control (struct flow_rule*,struct flow_match_control*) ;
 int flow_rule_match_enc_keyid (struct flow_rule*,struct flow_match_enc_keyid*) ;
 int flow_rule_match_ip (struct flow_rule*,struct flow_match_ip*) ;
 int flow_rule_match_ipv4_addrs (struct flow_rule*,struct flow_match_ipv4_addrs*) ;
 int flow_rule_match_ipv6_addrs (struct flow_rule*,struct flow_match_ipv6_addrs*) ;
 scalar_t__ flow_rule_match_key (struct flow_rule*,int ) ;
 int flow_rule_match_ports (struct flow_rule*,struct flow_match_ports*) ;
 int flow_rule_match_vlan (struct flow_rule*,struct flow_match_vlan*) ;
 int memcpy (int *,int *,int) ;
 TYPE_22__* netdev2pinfo (struct net_device*) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void cxgb4_process_flow_match(struct net_device *dev,
         struct flow_cls_offload *cls,
         struct ch_filter_specification *fs)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(cls);
 u16 addr_type = 0;

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_CONTROL)) {
  struct flow_match_control match;

  flow_rule_match_control(rule, &match);
  addr_type = match.key->addr_type;
 }

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_BASIC)) {
  struct flow_match_basic match;
  u16 ethtype_key, ethtype_mask;

  flow_rule_match_basic(rule, &match);
  ethtype_key = ntohs(match.key->n_proto);
  ethtype_mask = ntohs(match.mask->n_proto);

  if (ethtype_key == ETH_P_ALL) {
   ethtype_key = 0;
   ethtype_mask = 0;
  }

  if (ethtype_key == ETH_P_IPV6)
   fs->type = 1;

  fs->val.ethtype = ethtype_key;
  fs->mask.ethtype = ethtype_mask;
  fs->val.proto = match.key->ip_proto;
  fs->mask.proto = match.mask->ip_proto;
 }

 if (addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
  struct flow_match_ipv4_addrs match;

  flow_rule_match_ipv4_addrs(rule, &match);
  fs->type = 0;
  memcpy(&fs->val.lip[0], &match.key->dst, sizeof(match.key->dst));
  memcpy(&fs->val.fip[0], &match.key->src, sizeof(match.key->src));
  memcpy(&fs->mask.lip[0], &match.mask->dst, sizeof(match.mask->dst));
  memcpy(&fs->mask.fip[0], &match.mask->src, sizeof(match.mask->src));


  memcpy(&fs->nat_lip[0], &match.key->dst, sizeof(match.key->dst));
  memcpy(&fs->nat_fip[0], &match.key->src, sizeof(match.key->src));
 }

 if (addr_type == FLOW_DISSECTOR_KEY_IPV6_ADDRS) {
  struct flow_match_ipv6_addrs match;

  flow_rule_match_ipv6_addrs(rule, &match);
  fs->type = 1;
  memcpy(&fs->val.lip[0], match.key->dst.s6_addr,
         sizeof(match.key->dst));
  memcpy(&fs->val.fip[0], match.key->src.s6_addr,
         sizeof(match.key->src));
  memcpy(&fs->mask.lip[0], match.mask->dst.s6_addr,
         sizeof(match.mask->dst));
  memcpy(&fs->mask.fip[0], match.mask->src.s6_addr,
         sizeof(match.mask->src));


  memcpy(&fs->nat_lip[0], match.key->dst.s6_addr,
         sizeof(match.key->dst));
  memcpy(&fs->nat_fip[0], match.key->src.s6_addr,
         sizeof(match.key->src));
 }

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_PORTS)) {
  struct flow_match_ports match;

  flow_rule_match_ports(rule, &match);
  fs->val.lport = cpu_to_be16(match.key->dst);
  fs->mask.lport = cpu_to_be16(match.mask->dst);
  fs->val.fport = cpu_to_be16(match.key->src);
  fs->mask.fport = cpu_to_be16(match.mask->src);


  fs->nat_lport = cpu_to_be16(match.key->dst);
  fs->nat_fport = cpu_to_be16(match.key->src);
 }

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_IP)) {
  struct flow_match_ip match;

  flow_rule_match_ip(rule, &match);
  fs->val.tos = match.key->tos;
  fs->mask.tos = match.mask->tos;
 }

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_KEYID)) {
  struct flow_match_enc_keyid match;

  flow_rule_match_enc_keyid(rule, &match);
  fs->val.vni = be32_to_cpu(match.key->keyid);
  fs->mask.vni = be32_to_cpu(match.mask->keyid);
  if (fs->mask.vni) {
   fs->val.encap_vld = 1;
   fs->mask.encap_vld = 1;
  }
 }

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_VLAN)) {
  struct flow_match_vlan match;
  u16 vlan_tci, vlan_tci_mask;

  flow_rule_match_vlan(rule, &match);
  vlan_tci = match.key->vlan_id | (match.key->vlan_priority <<
            VLAN_PRIO_SHIFT);
  vlan_tci_mask = match.mask->vlan_id | (match.mask->vlan_priority <<
           VLAN_PRIO_SHIFT);
  fs->val.ivlan = vlan_tci;
  fs->mask.ivlan = vlan_tci_mask;

  fs->val.ivlan_vld = 1;
  fs->mask.ivlan_vld = 1;
  if (fs->val.ethtype == ETH_P_8021Q) {
   fs->val.ethtype = 0;
   fs->mask.ethtype = 0;
  }
 }




 fs->val.iport = netdev2pinfo(dev)->port_id;
 fs->mask.iport = ~0;
}
