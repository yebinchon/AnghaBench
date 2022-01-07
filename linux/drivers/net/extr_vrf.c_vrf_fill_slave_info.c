
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_vrf {int tb_id; } ;
struct net_device {int dummy; } ;


 int EMSGSIZE ;
 int IFLA_VRF_PORT_TABLE ;
 struct net_vrf* netdev_priv (struct net_device const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int vrf_fill_slave_info(struct sk_buff *skb,
          const struct net_device *vrf_dev,
          const struct net_device *slave_dev)
{
 struct net_vrf *vrf = netdev_priv(vrf_dev);

 if (nla_put_u32(skb, IFLA_VRF_PORT_TABLE, vrf->tb_id))
  return -EMSGSIZE;

 return 0;
}
