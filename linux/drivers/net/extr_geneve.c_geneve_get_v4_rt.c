
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int mark; } ;
struct TYPE_8__ {struct net_device* dev; } ;
struct rtable {TYPE_4__ dst; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int src; int dst; } ;
struct TYPE_6__ {TYPE_1__ ipv4; } ;
struct TYPE_7__ {int tos; TYPE_2__ u; } ;
struct ip_tunnel_info {int dst_cache; TYPE_3__ key; } ;
struct geneve_sock {int dummy; } ;
struct geneve_dev {int net; int collect_md; } ;
struct flowi4 {int saddr; int daddr; int flowi4_tos; int flowi4_proto; int flowi4_mark; } ;
struct dst_cache {int dummy; } ;
typedef int __u8 ;


 int EIO ;
 int ELOOP ;
 int ENETUNREACH ;
 struct rtable* ERR_PTR (int ) ;
 int IPPROTO_UDP ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int RT_TOS (int) ;
 struct rtable* dst_cache_get_ip4 (struct dst_cache*,int *) ;
 int dst_cache_set_ip4 (struct dst_cache*,TYPE_4__*,int ) ;
 int ip_hdr (struct sk_buff*) ;
 struct rtable* ip_route_output_key (int ,struct flowi4*) ;
 int ip_rt_put (struct rtable*) ;
 int ip_tunnel_dst_cache_usable (struct sk_buff*,struct ip_tunnel_info const*) ;
 int ip_tunnel_get_dsfield (int ,struct sk_buff*) ;
 int memset (struct flowi4*,int ,int) ;
 int netdev_dbg (struct net_device*,char*,int *) ;
 struct geneve_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct rtable *geneve_get_v4_rt(struct sk_buff *skb,
           struct net_device *dev,
           struct geneve_sock *gs4,
           struct flowi4 *fl4,
           const struct ip_tunnel_info *info)
{
 bool use_cache = ip_tunnel_dst_cache_usable(skb, info);
 struct geneve_dev *geneve = netdev_priv(dev);
 struct dst_cache *dst_cache;
 struct rtable *rt = ((void*)0);
 __u8 tos;

 if (!gs4)
  return ERR_PTR(-EIO);

 memset(fl4, 0, sizeof(*fl4));
 fl4->flowi4_mark = skb->mark;
 fl4->flowi4_proto = IPPROTO_UDP;
 fl4->daddr = info->key.u.ipv4.dst;
 fl4->saddr = info->key.u.ipv4.src;

 tos = info->key.tos;
 if ((tos == 1) && !geneve->collect_md) {
  tos = ip_tunnel_get_dsfield(ip_hdr(skb), skb);
  use_cache = 0;
 }
 fl4->flowi4_tos = RT_TOS(tos);

 dst_cache = (struct dst_cache *)&info->dst_cache;
 if (use_cache) {
  rt = dst_cache_get_ip4(dst_cache, &fl4->saddr);
  if (rt)
   return rt;
 }
 rt = ip_route_output_key(geneve->net, fl4);
 if (IS_ERR(rt)) {
  netdev_dbg(dev, "no route to %pI4\n", &fl4->daddr);
  return ERR_PTR(-ENETUNREACH);
 }
 if (rt->dst.dev == dev) {
  netdev_dbg(dev, "circular route to %pI4\n", &fl4->daddr);
  ip_rt_put(rt);
  return ERR_PTR(-ELOOP);
 }
 if (use_cache)
  dst_cache_set_ip4(dst_cache, &rt->dst, fl4->saddr);
 return rt;
}
