
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; } ;
struct neighbour {TYPE_1__* dev; } ;
struct flowi4 {int dummy; } ;
struct cxgb4_lld_info {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_2__ {int flags; } ;


 int IFF_LOOPBACK ;
 int IPPROTO_TCP ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int cxgb_our_interface (struct cxgb4_lld_info*,struct net_device* (*) (struct net_device*),TYPE_1__*) ;
 struct neighbour* dst_neigh_lookup (struct dst_entry*,int *) ;
 int dst_release (struct dst_entry*) ;
 int init_net ;
 struct rtable* ip_route_output_ports (int *,struct flowi4*,int *,int ,int ,int ,int ,int ,int ,int ) ;
 int neigh_release (struct neighbour*) ;

struct dst_entry *
cxgb_find_route(struct cxgb4_lld_info *lldi,
  struct net_device *(*get_real_dev)(struct net_device *),
  __be32 local_ip, __be32 peer_ip, __be16 local_port,
  __be16 peer_port, u8 tos)
{
 struct rtable *rt;
 struct flowi4 fl4;
 struct neighbour *n;

 rt = ip_route_output_ports(&init_net, &fl4, ((void*)0), peer_ip, local_ip,
       peer_port, local_port, IPPROTO_TCP,
       tos, 0);
 if (IS_ERR(rt))
  return ((void*)0);
 n = dst_neigh_lookup(&rt->dst, &peer_ip);
 if (!n)
  return ((void*)0);
 if (!cxgb_our_interface(lldi, get_real_dev, n->dev) &&
     !(n->dev->flags & IFF_LOOPBACK)) {
  neigh_release(n);
  dst_release(&rt->dst);
  return ((void*)0);
 }
 neigh_release(n);
 return &rt->dst;
}
