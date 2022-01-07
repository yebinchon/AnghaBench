
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfp_flower_pedit_acts {int dummy; } ;
struct nfp_fl_set_mpls {int dummy; } ;
struct nfp_fl_set_ipv4_tun {int dummy; } ;
struct nfp_fl_push_vlan {int dummy; } ;
struct nfp_fl_push_mpls {int dummy; } ;
struct nfp_fl_pre_tunnel {int dummy; } ;
struct nfp_fl_pop_vlan {int dummy; } ;
struct nfp_fl_pop_mpls {int dummy; } ;
struct TYPE_2__ {void* shortcut; } ;
struct nfp_fl_payload {TYPE_1__ meta; int * action_data; } ;
struct nfp_app {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ip_tunnel_info {int mode; } ;
struct flow_cls_offload {int dummy; } ;
struct flow_action_entry {int id; int csum_flags; int ptype; struct ip_tunnel_info* tunnel; } ;
typedef enum nfp_flower_tun_type { ____Placeholder_nfp_flower_tun_type } nfp_flower_tun_type ;


 int EOPNOTSUPP ;
 int NFP_FL_MAX_A_SIZ ;
 int NFP_FL_SC_ACT_DROP ;
 int NFP_FL_SC_ACT_NULL ;
 int NFP_FL_SC_ACT_POPV ;
 int NFP_FL_SUPPORTED_TUNNEL_INFO_FLAGS ;
 int NFP_FL_TUNNEL_NONE ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int PACKET_HOST ;
 void* cpu_to_be32 (int ) ;
 int nfp_fl_get_tun_from_act (struct nfp_app*,struct flow_cls_offload*,struct flow_action_entry const*,int) ;
 int nfp_fl_pedit (struct flow_action_entry const*,struct flow_cls_offload*,int *,int*,int*,struct nfp_flower_pedit_acts*,struct netlink_ext_ack*) ;
 int nfp_fl_pop_mpls (struct nfp_fl_pop_mpls*,struct flow_action_entry const*) ;
 int nfp_fl_pop_vlan (struct nfp_fl_pop_vlan*) ;
 struct nfp_fl_pre_tunnel* nfp_fl_pre_tunnel (int *,int) ;
 int nfp_fl_push_geneve_options (struct nfp_fl_payload*,int*,struct flow_action_entry const*,struct netlink_ext_ack*) ;
 int nfp_fl_push_mpls (struct nfp_fl_push_mpls*,struct flow_action_entry const*,struct netlink_ext_ack*) ;
 int nfp_fl_push_vlan (struct nfp_fl_push_vlan*,struct flow_action_entry const*) ;
 int nfp_fl_set_ipv4_tun (struct nfp_app*,struct nfp_fl_set_ipv4_tun*,struct flow_action_entry const*,struct nfp_fl_pre_tunnel*,int,struct net_device*,struct netlink_ext_ack*) ;
 int nfp_fl_set_mpls (struct nfp_fl_set_mpls*,struct flow_action_entry const*) ;
 int nfp_flower_output_action (struct nfp_app*,struct flow_action_entry const*,struct nfp_fl_payload*,int*,struct net_device*,int,int*,int*,int*,int*,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int
nfp_flower_loop_action(struct nfp_app *app, const struct flow_action_entry *act,
         struct flow_cls_offload *flow,
         struct nfp_fl_payload *nfp_fl, int *a_len,
         struct net_device *netdev,
         enum nfp_flower_tun_type *tun_type, int *tun_out_cnt,
         int *out_cnt, u32 *csum_updated,
         struct nfp_flower_pedit_acts *set_act, bool *pkt_host,
         struct netlink_ext_ack *extack, int act_idx)
{
 struct nfp_fl_set_ipv4_tun *set_tun;
 struct nfp_fl_pre_tunnel *pre_tun;
 struct nfp_fl_push_vlan *psh_v;
 struct nfp_fl_push_mpls *psh_m;
 struct nfp_fl_pop_vlan *pop_v;
 struct nfp_fl_pop_mpls *pop_m;
 struct nfp_fl_set_mpls *set_m;
 int err;

 switch (act->id) {
 case 141:
  nfp_fl->meta.shortcut = cpu_to_be32(NFP_FL_SC_ACT_DROP);
  break;
 case 132:
 case 133:
  err = nfp_flower_output_action(app, act, nfp_fl, a_len, netdev,
            1, tun_type, tun_out_cnt,
            out_cnt, csum_updated, *pkt_host,
            extack);
  if (err)
   return err;
  break;
 case 138:
 case 139:
  err = nfp_flower_output_action(app, act, nfp_fl, a_len, netdev,
            0, tun_type, tun_out_cnt,
            out_cnt, csum_updated, *pkt_host,
            extack);
  if (err)
   return err;
  break;
 case 129:
  if (*a_len +
      sizeof(struct nfp_fl_pop_vlan) > NFP_FL_MAX_A_SIZ) {
   NL_SET_ERR_MSG_MOD(extack, "unsupported offload: maximum allowed action list size exceeded at pop vlan");
   return -EOPNOTSUPP;
  }

  pop_v = (struct nfp_fl_pop_vlan *)&nfp_fl->action_data[*a_len];
  nfp_fl->meta.shortcut = cpu_to_be32(NFP_FL_SC_ACT_POPV);

  nfp_fl_pop_vlan(pop_v);
  *a_len += sizeof(struct nfp_fl_pop_vlan);
  break;
 case 128:
  if (*a_len +
      sizeof(struct nfp_fl_push_vlan) > NFP_FL_MAX_A_SIZ) {
   NL_SET_ERR_MSG_MOD(extack, "unsupported offload: maximum allowed action list size exceeded at push vlan");
   return -EOPNOTSUPP;
  }

  psh_v = (struct nfp_fl_push_vlan *)&nfp_fl->action_data[*a_len];
  nfp_fl->meta.shortcut = cpu_to_be32(NFP_FL_SC_ACT_NULL);

  nfp_fl_push_vlan(psh_v, act);
  *a_len += sizeof(struct nfp_fl_push_vlan);
  break;
 case 130: {
  const struct ip_tunnel_info *ip_tun = act->tunnel;

  *tun_type = nfp_fl_get_tun_from_act(app, flow, act, act_idx);
  if (*tun_type == NFP_FL_TUNNEL_NONE) {
   NL_SET_ERR_MSG_MOD(extack, "unsupported offload: unsupported tunnel type in action list");
   return -EOPNOTSUPP;
  }

  if (ip_tun->mode & ~NFP_FL_SUPPORTED_TUNNEL_INFO_FLAGS) {
   NL_SET_ERR_MSG_MOD(extack, "unsupported offload: unsupported tunnel flags in action list");
   return -EOPNOTSUPP;
  }





  if (*a_len + sizeof(struct nfp_fl_pre_tunnel) +
      sizeof(struct nfp_fl_set_ipv4_tun) > NFP_FL_MAX_A_SIZ) {
   NL_SET_ERR_MSG_MOD(extack, "unsupported offload: maximum allowed action list size exceeded at tunnel encap");
   return -EOPNOTSUPP;
  }

  pre_tun = nfp_fl_pre_tunnel(nfp_fl->action_data, *a_len);
  nfp_fl->meta.shortcut = cpu_to_be32(NFP_FL_SC_ACT_NULL);
  *a_len += sizeof(struct nfp_fl_pre_tunnel);

  err = nfp_fl_push_geneve_options(nfp_fl, a_len, act, extack);
  if (err)
   return err;

  set_tun = (void *)&nfp_fl->action_data[*a_len];
  err = nfp_fl_set_ipv4_tun(app, set_tun, act, pre_tun,
       *tun_type, netdev, extack);
  if (err)
   return err;
  *a_len += sizeof(struct nfp_fl_set_ipv4_tun);
  }
  break;
 case 131:

  return 0;
 case 140:
  if (nfp_fl_pedit(act, flow, &nfp_fl->action_data[*a_len],
     a_len, csum_updated, set_act, extack))
   return -EOPNOTSUPP;
  break;
 case 142:

  if (act->csum_flags & ~*csum_updated) {
   NL_SET_ERR_MSG_MOD(extack, "unsupported offload: unsupported csum update action in action list");
   return -EOPNOTSUPP;
  }



  *csum_updated &= ~act->csum_flags;
  break;
 case 135:
  if (*a_len +
      sizeof(struct nfp_fl_push_mpls) > NFP_FL_MAX_A_SIZ) {
   NL_SET_ERR_MSG_MOD(extack, "unsupported offload: maximum allowed action list size exceeded at push MPLS");
   return -EOPNOTSUPP;
  }

  psh_m = (struct nfp_fl_push_mpls *)&nfp_fl->action_data[*a_len];
  nfp_fl->meta.shortcut = cpu_to_be32(NFP_FL_SC_ACT_NULL);

  err = nfp_fl_push_mpls(psh_m, act, extack);
  if (err)
   return err;
  *a_len += sizeof(struct nfp_fl_push_mpls);
  break;
 case 136:
  if (*a_len +
      sizeof(struct nfp_fl_pop_mpls) > NFP_FL_MAX_A_SIZ) {
   NL_SET_ERR_MSG_MOD(extack, "unsupported offload: maximum allowed action list size exceeded at pop MPLS");
   return -EOPNOTSUPP;
  }

  pop_m = (struct nfp_fl_pop_mpls *)&nfp_fl->action_data[*a_len];
  nfp_fl->meta.shortcut = cpu_to_be32(NFP_FL_SC_ACT_NULL);

  nfp_fl_pop_mpls(pop_m, act);
  *a_len += sizeof(struct nfp_fl_pop_mpls);
  break;
 case 137:
  if (*a_len +
      sizeof(struct nfp_fl_set_mpls) > NFP_FL_MAX_A_SIZ) {
   NL_SET_ERR_MSG_MOD(extack, "unsupported offload: maximum allowed action list size exceeded at set MPLS");
   return -EOPNOTSUPP;
  }

  set_m = (struct nfp_fl_set_mpls *)&nfp_fl->action_data[*a_len];
  nfp_fl->meta.shortcut = cpu_to_be32(NFP_FL_SC_ACT_NULL);

  nfp_fl_set_mpls(set_m, act);
  *a_len += sizeof(struct nfp_fl_set_mpls);
  break;
 case 134:

  if (act->ptype != PACKET_HOST)
   return -EOPNOTSUPP;

  *pkt_host = 1;
  break;
 default:

  NL_SET_ERR_MSG_MOD(extack, "unsupported offload: unsupported action in action list");
  return -EOPNOTSUPP;
 }

 return 0;
}
