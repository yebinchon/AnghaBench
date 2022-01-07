
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int flags; int bridge_mode; } ;


 int IXGBE_FLAG_SRIOV_ENABLED ;
 int ndo_dflt_bridge_getlink (struct sk_buff*,int ,int ,struct net_device*,int ,int ,int ,int,int ,int *) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_ndo_bridge_getlink(struct sk_buff *skb, u32 pid, u32 seq,
        struct net_device *dev,
        u32 filter_mask, int nlflags)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);

 if (!(adapter->flags & IXGBE_FLAG_SRIOV_ENABLED))
  return 0;

 return ndo_dflt_bridge_getlink(skb, pid, seq, dev,
           adapter->bridge_mode, 0, 0, nlflags,
           filter_mask, ((void*)0));
}
