
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel_key {int dummy; } ;
struct ip_tunnel_info {struct ip_tunnel_key key; } ;
struct flow_action_entry {struct ip_tunnel_info* tunnel; } ;
struct bnxt_tc_actions {int flags; struct ip_tunnel_key tun_encap_key; } ;
struct bnxt {int dev; } ;


 scalar_t__ AF_INET ;
 int BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP ;
 int EOPNOTSUPP ;
 scalar_t__ ip_tunnel_info_af (struct ip_tunnel_info const*) ;
 int netdev_info (int ,char*) ;

__attribute__((used)) static int bnxt_tc_parse_tunnel_set(struct bnxt *bp,
        struct bnxt_tc_actions *actions,
        const struct flow_action_entry *act)
{
 const struct ip_tunnel_info *tun_info = act->tunnel;
 const struct ip_tunnel_key *tun_key = &tun_info->key;

 if (ip_tunnel_info_af(tun_info) != AF_INET) {
  netdev_info(bp->dev, "only IPv4 tunnel-encap is supported");
  return -EOPNOTSUPP;
 }

 actions->tun_encap_key = *tun_key;
 actions->flags |= BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP;
 return 0;
}
