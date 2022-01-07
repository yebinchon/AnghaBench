
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vlan_dev_priv {int vlan_proto; int vlan_id; struct net_device* real_dev; } ;
struct TYPE_9__ {struct net_device* dev; } ;
struct rtable {TYPE_4__ dst; } ;
struct net_device {int dev_addr; } ;
struct neighbour {int dummy; } ;
struct TYPE_7__ {int src; int dst; } ;
struct TYPE_8__ {TYPE_2__ ipv4; } ;
struct ip_tunnel_key {int ttl; TYPE_3__ u; int tp_dst; } ;
struct TYPE_6__ {int member_0; } ;
struct flowi4 {int saddr; int daddr; int fl4_dport; int flowi4_proto; TYPE_1__ member_0; } ;
struct bnxt_tc_l2_key {int num_vlans; int smac; int dmac; int inner_vlan_tpid; int inner_vlan_tci; } ;
struct bnxt {struct net_device* dev; } ;


 int EOPNOTSUPP ;
 int IPPROTO_UDP ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int dev_net (struct net_device*) ;
 struct neighbour* dst_neigh_lookup (TYPE_4__*,int *) ;
 int ether_addr_copy (int ,int ) ;
 int htons (int ) ;
 int ip4_dst_hoplimit (TYPE_4__*) ;
 struct rtable* ip_route_output_key (int ,struct flowi4*) ;
 int ip_rt_put (struct rtable*) ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 int neigh_ha_snapshot (int ,struct neighbour*,struct net_device*) ;
 int neigh_release (struct neighbour*) ;
 int netdev_info (struct net_device*,char*,int *,...) ;
 int netdev_name (struct net_device*) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_tc_resolve_tunnel_hdrs(struct bnxt *bp,
           struct ip_tunnel_key *tun_key,
           struct bnxt_tc_l2_key *l2_info)
{
 return -EOPNOTSUPP;

}
