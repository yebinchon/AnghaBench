
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macvlan_dev {scalar_t__ mode; scalar_t__ macaddr_count; int flags; } ;


 int EMSGSIZE ;
 int IFLA_MACVLAN_FLAGS ;
 int IFLA_MACVLAN_MACADDR_COUNT ;
 int IFLA_MACVLAN_MACADDR_DATA ;
 int IFLA_MACVLAN_MODE ;
 int MACVLAN_HASH_SIZE ;
 scalar_t__ macvlan_fill_info_macaddr (struct sk_buff*,struct macvlan_dev*,int) ;
 struct macvlan_dev* netdev_priv (struct net_device const*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;

__attribute__((used)) static int macvlan_fill_info(struct sk_buff *skb,
    const struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 int i;
 struct nlattr *nest;

 if (nla_put_u32(skb, IFLA_MACVLAN_MODE, vlan->mode))
  goto nla_put_failure;
 if (nla_put_u16(skb, IFLA_MACVLAN_FLAGS, vlan->flags))
  goto nla_put_failure;
 if (nla_put_u32(skb, IFLA_MACVLAN_MACADDR_COUNT, vlan->macaddr_count))
  goto nla_put_failure;
 if (vlan->macaddr_count > 0) {
  nest = nla_nest_start_noflag(skb, IFLA_MACVLAN_MACADDR_DATA);
  if (nest == ((void*)0))
   goto nla_put_failure;

  for (i = 0; i < MACVLAN_HASH_SIZE; i++) {
   if (macvlan_fill_info_macaddr(skb, vlan, i))
    goto nla_put_failure;
  }
  nla_nest_end(skb, nest);
 }
 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
